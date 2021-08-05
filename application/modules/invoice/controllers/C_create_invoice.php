<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class C_create_invoice extends MX_Controller {

    /*function constructor*/
    function __construct() {

        parent::__construct();
        /*breadcrumb default*/
        $this->breadcrumbs->push('Index', 'invoice/C_create_invoice');
        /*session redirect login if not login*/
        if($this->session->userdata('logged')!=TRUE){
            echo 'Session Expired !'; exit;
        }
        /*load model*/
        $this->load->model('M_create_invoice');
        /*enable profiler*/
        $this->output->enable_profiler(false);
        /*profile class*/
        $this->title = ($this->lib_menus->get_menu_by_class(get_class($this)))?$this->lib_menus->get_menu_by_class(get_class($this))->name : 'Title';
        
    }

    public function index() { 
        /*define variable data*/
        $data = array(
            'title' => $this->title,
            'breadcrumbs' => $this->breadcrumbs->show()
        );
        /*load view index*/
        $this->load->view('V_create_invoice/index', $data);
    }

    public function form($id='')
    {
        /*if id is not null then will show form edit*/
        if( $id != '' ){
            /*breadcrumbs for edit*/
            $this->breadcrumbs->push('Edit '.strtolower($this->title).'', 'C_create_invoice/'.strtolower(get_class($this)).'/'.__FUNCTION__.'/'.$id);
            /*get value by id*/
            $data['value'] = $this->M_create_invoice->get_by_id($id);
            /*initialize flag for form*/
            $data['flag'] = "update";
        }else{
            /*breadcrumbs for create or add row*/
            $this->breadcrumbs->push('Add '.strtolower($this->title).'', 'C_create_invoice/'.strtolower(get_class($this)).'/form');
            /*initialize flag for form add*/
            $data['flag'] = "create";
        }
        /*title header*/
        $data['title'] = $this->title;
        /*show breadcrumbs*/
        $data['breadcrumbs'] = $this->breadcrumbs->show();
        /*load form view*/
        $this->load->view('V_create_invoice/form', $data);
    }
    /*function for view data only*/
    public function show($id)
    {
        /*breadcrumbs for view*/
        $this->breadcrumbs->push('View '.strtolower($this->title).'', 'C_create_invoice/'.strtolower(get_class($this)).'/'.__FUNCTION__.'/'.$id);
        /*define data variabel*/
        $data['value'] = $this->M_create_invoice->get_by_id($id);
        $data['title'] = $this->title;
        $data['flag'] = "read";
        $data['breadcrumbs'] = $this->breadcrumbs->show();
        /*load form view*/
        $this->load->view('V_create_invoice/form', $data);
    }

    public function print_preview($id)
    {
        /*breadcrumbs for view*/
        $this->breadcrumbs->push('View '.strtolower($this->title).'', 'C_create_invoice/'.strtolower(get_class($this)).'/'.__FUNCTION__.'/'.$id);
        /*define data variabel*/
        $data['value'] = $this->M_create_invoice->get_by_id($id);
        $data['title'] = $this->title;
        $data['flag'] = "read";
        $data['breadcrumbs'] = $this->breadcrumbs->show();
        /*load form view*/
        $this->load->view('V_create_invoice/print_preview', $data);
    }

    public function get_data()
    {
        /*get data from model*/
        $list = $this->M_create_invoice->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $row_list) {
            $no++;
            $row = array();
            $row[] = '<div class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace" name="selected_id[]" value="'.$row_list->id.'"/>
                            <span class="lbl"></span>
                        </label>
                      </div>';
            $row[] = '<div class="center">
                        '.$this->authuser->show_button('invoice/C_create_invoice','R',$row_list->id,2).'
                        '.$this->authuser->show_button('invoice/C_create_invoice','U',$row_list->id,2).'
                        '.$this->authuser->show_button('invoice/C_create_invoice','D',$row_list->id,2).'
                      </div>'; 
            $row[] = '<div class="center">'.$row_list->letter_no.'</div>';
            $row[] = $this->tanggal->formatDate($row_list->invoice_date);
            $row[] = strtoupper($row_list->received_from).'<br>'.$row_list->address;
            $row[] = strtoupper($row_list->invoice_no);
            $row[] = number_format($row_list->amount);
            $row[] = $row_list->check_no;
            $row[] = number_format($row_list->check_amount);
            $row[] = $this->logs->show_logs_record_datatable($row_list);
            $row[] = '<a onclick="PopupCenter('."'".base_url()."invoice/C_create_invoice/print_preview/".$row_list->id."'".', '."'PRINT PREVIEW'".', 750, 550)" href="#" class="btn btn-xs btn-inverse"><i class="fa fa-print"></i></a>';

            $data[] = $row;
        }

        $output = array(
                        "draw" => $_POST['draw'],
                        "recordsTotal" => $this->M_create_invoice->count_all(),
                        "recordsFiltered" => $this->M_create_invoice->count_filtered(),
                        "data" => $data,
                );
        //output to json format
        echo json_encode($output);
    }

    public function process()
    {
       
        $this->load->library('form_validation');
        $val = $this->form_validation;
        $val->set_rules('letter_no', 'Letter No', 'trim|required');
        $val->set_rules('invoice_date', 'Date', 'trim|required');
        $val->set_rules('received_from', 'Received From', 'trim|required');
        $val->set_rules('address', 'Address', 'trim|required');
        $val->set_rules('invoice_no', 'Invoice No', 'trim|required');
        $val->set_rules('amount', 'Invoice Amount', 'trim|required');
        $val->set_rules('check_no', 'Check No', 'trim|required');
        $val->set_rules('check_amount', 'Check Amount', 'trim|required');
        $val->set_rules('note', 'Note', 'trim|required');

        $val->set_message('required', "Silahkan isi field \"%s\"");

        if ($val->run() == FALSE)
        {
            $val->set_error_delimiters('<div style="color:white">', '</div>');
            echo json_encode(array('status' => 301, 'message' => validation_errors()));
        }
        else
        {                       
            $this->db->trans_begin();
            $id = ($this->input->post('id'))?$this->regex->_genRegex($this->input->post('id'),'RGXINT'):0;

            $dataexc = array(
                'letter_no' => $this->regex->_genRegex($val->set_value('letter_no'), 'RGXQSL'),
                'invoice_date' => $this->regex->_genRegex($val->set_value('invoice_date'), 'RGXQSL'),
                'received_from' => $this->regex->_genRegex($val->set_value('received_from'), 'RGXQSL'),
                'address' => $this->regex->_genRegex($val->set_value('address'), 'RGXQSL'),
                'invoice_no' => $this->regex->_genRegex($val->set_value('invoice_no'), 'RGXQSL'),
                'amount' => $this->regex->_genRegex($val->set_value('amount'), 'RGXQSL'),
                'check_no' => $this->regex->_genRegex($val->set_value('check_no'), 'RGXQSL'),
                'check_amount' => $this->regex->_genRegex($val->set_value('check_amount'), 'RGXQSL'),
                'note' => $this->regex->_genRegex($val->set_value('note'), 'RGXQSL'),
                'is_active' => 'Y',
            );
            //print_r($dataexc);die;
            if($id==0){
                $dataexc['created_date'] = date('Y-m-d H:i:s');
                $dataexc['created_by'] = json_encode(array('user_id' =>$this->regex->_genRegex($this->session->userdata('user')->user_id,'RGXINT'), 'fullname' => $this->regex->_genRegex($this->session->userdata('user')->fullname,'RGXQSL')));
                /*save post data*/
                $newId = $this->M_create_invoice->save($dataexc);
                /*save logs*/
                $this->logs->save('t_invoice', $newId, 'insert new record on '.$this->title.' module', json_encode($dataexc),'id');
            }else{
                $dataexc['updated_date'] = date('Y-m-d H:i:s');
                $dataexc['updated_by'] = json_encode(array('user_id' =>$this->regex->_genRegex($this->session->userdata('user')->user_id,'RGXINT'), 'fullname' => $this->regex->_genRegex($this->session->userdata('user')->fullname,'RGXQSL')));
                /*update record*/
                $this->M_create_invoice->update(array('id' => $id), $dataexc);
                $newId = $id;
                /*save logs*/
                $this->logs->save('t_invoice', $newId, 'update record on '.$this->title.' module', json_encode($dataexc),'id');
            }
            if ($this->db->trans_status() === FALSE)
            {
                $this->db->trans_rollback();
                echo json_encode(array('status' => 301, 'message' => 'Maaf Proses Gagal Dilakukan'));
            }
            else
            {
                $this->db->trans_commit();
                echo json_encode(array('status' => 200, 'message' => 'Proses Berhasil Dilakukan'));
            }
        }
    }

    public function delete()
    {
        $id=$this->input->post('ID')?$this->regex->_genRegex($this->input->post('ID',TRUE),'RGXQSL'):null;
        $toArray = explode(',',$id);
        if($id!=null){
            if($this->M_create_invoice->delete_by_id($toArray)){
                $this->logs->save('t_invoice', $id, 'delete record', '', 'id');
                echo json_encode(array('status' => 200, 'message' => 'Proses Hapus Data Berhasil Dilakukan'));

            }else{
                echo json_encode(array('status' => 301, 'message' => 'Maaf Proses Hapus Data Gagal Dilakukan'));
            }
        }else{
            echo json_encode(array('status' => 301, 'message' => 'Tidak ada item yang dipilih'));
        }
        
    }


}

/* End of file example.php */
/* Location: ./application/functiones/example/controllers/example.php */
