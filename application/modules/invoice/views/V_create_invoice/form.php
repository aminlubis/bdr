<script src="<?php echo base_url()?>assets/js/date-time/bootstrap-datepicker.js"></script>
<link rel="stylesheet" href="<?php echo base_url()?>assets/css/datepicker.css" />
<script type="text/javascript" src="<?php echo base_url()?>assets/js/jquery_number/jquery.number.js"></script>

<script>
jQuery(function($) {
  
  $('.format_number').number( true, 2 );

  $('.date-picker').datepicker({
    autoclose: true,
    todayHighlight: true,
    format: 'yyyy-mm-dd', 
  })
  //show datepicker when clicking on the icon
  .next().on(ace.click_event, function(){
    $(this).prev().focus();
  });
});

$(document).ready(function(){
  
    $('#form_t_invoice').ajaxForm({
      beforeSend: function() {
        achtungShowLoader();  
      },
      uploadProgress: function(event, position, total, percentComplete) {
      },
      complete: function(xhr) {     
        var data=xhr.responseText;
        var jsonResponse = JSON.parse(data);

        if(jsonResponse.status === 200){
          $.achtung({message: jsonResponse.message, timeout:5});
          $('#page-area-content').load('invoice/C_create_invoice?_=' + (new Date()).getTime());
        }else{
          $.achtung({message: jsonResponse.message, timeout:5});
        }
        achtungHideLoader();
      }
    }); 
})

</script>

<div class="page-header">
  <h1>
    <?php echo $title?>
    <small>
      <i class="ace-icon fa fa-angle-double-right"></i>
      <?php echo $breadcrumbs?>
    </small>
  </h1>
</div><!-- /.page-header -->

<div class="row">
  <div class="col-xs-12">
    <!-- PAGE CONTENT BEGINS -->
          <div class="widget-body">
            <div class="widget-main no-padding">
              <form class="form-horizontal" method="post" id="form_t_invoice" action="<?php echo site_url('invoice/C_create_invoice/process')?>" enctype="multipart/form-data">
                <br>

                <div class="form-group">
                  <label class="control-label col-md-2">ID</label>
                  <div class="col-md-1">
                    <input name="id" id="id" value="<?php echo isset($value)?$value->id:0?>" placeholder="Auto" class="form-control" type="text" readonly>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Letter No.</label>
                  <div class="col-md-1">
                    <input name="letter_no" id="letter_no" value="<?php echo isset($value)?$value->letter_no:''?>" class="form-control" type="text">
                  </div>
                  <label class="control-label col-md-1">Date</label>
                  <div class="col-md-2">
                    <div class="input-group">
                          <input name="invoice_date" id="invoice_date" value="<?php echo isset($value)?$value->invoice_date:''?>"  class="form-control date-picker" type="text">
                          <span class="input-group-addon">
                          <i class="ace-icon fa fa-calendar"></i>
                          </span>
                      </div>
                    </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Received From</label>
                  <div class="col-md-3">
                    <input name="received_from" id="received_from" value="<?php echo isset($value)?$value->received_from:''?>" placeholder="" class="form-control" type="text" <?php echo ($flag=='read')?'readonly':''?> >
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Address</label>
                  <div class="col-md-4">
                  <textarea name="address" class="form-control" <?php echo ($flag=='read')?'readonly':''?> style="height:70px !important"><?php echo isset($value)?$value->address:''?></textarea>
                  </div>
                </div>

                <br>
                <p><b>IN PAYMENT OF</b></p>
                <div class="form-group">
                  <label class="control-label col-md-2">Invoice No.</label>
                  <div class="col-md-1">
                    <input name="invoice_no" id="invoice_no" value="<?php echo isset($value)?$value->invoice_no:''?>" class="form-control" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Amount</label>
                  <div class="col-md-2">
                    <input name="amount" id="amount" value="<?php echo isset($value)?$value->amount:''?>" placeholder="" class="format_number form-control" type="text" <?php echo ($flag=='read')?'readonly':''?> style="text-align: right">
                  </div>
                </div>
                <br>
                <p><b>FORM OF PAYMENT</b></p>
                <div class="form-group">
                  <label class="control-label col-md-2">Check No.</label>
                  <div class="col-md-1">
                    <input name="check_no" id="check_no" value="<?php echo isset($value)?$value->check_no:''?>" class="form-control" type="text">
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Amount</label>
                  <div class="col-md-2">
                    <input name="check_amount" id="check_amount" value="<?php echo isset($value)?$value->check_amount:''?>" placeholder="" class="format_number form-control" type="text" <?php echo ($flag=='read')?'readonly':''?> style="text-align: right">
                  </div>
                </div>


                <div class="form-group">
                  <label class="control-label col-md-2">Note</label>
                  <div class="col-md-4">
                  <textarea name="note" class="form-control" <?php echo ($flag=='read')?'readonly':''?> style="height:70px !important"><?php echo isset($value)?$value->note:''?></textarea>
                  </div>
                </div>

                <div class="form-group">
                  <label class="control-label col-md-2">Last update</label>
                  <div class="col-md-8" style="padding-top:8px;font-size:11px">
                      <i class="fa fa-calendar"></i> <?php echo isset($value->updated_date)?$this->tanggal->formatDateTime($value->updated_date):isset($value)?$this->tanggal->formatDateTime($value->created_date):date('d-M-Y H:i:s')?> - 
                      by : <i class="fa fa-user"></i> <?php echo isset($value->updated_by)?$value->updated_by:isset($value->created_by)?$value->created_by:$this->session->userdata('user')->username?>
                  </div>
                </div>


                <div class="form-actions center">

                  <!--hidden field-->

                  <a onclick="getMenu('invoice/C_create_invoice')" href="#" class="btn btn-sm btn-success">
                    <i class="ace-icon fa fa-arrow-left icon-on-right bigger-110"></i>
                    Kembali ke daftar
                  </a>
                  <?php if($flag != 'read'):?>
                  <button type="reset" id="btnReset" class="btn btn-sm btn-danger">
                    <i class="ace-icon fa fa-close icon-on-right bigger-110"></i>
                    Reset
                  </button>
                  <button type="submit" id="btnSave" name="submit" class="btn btn-sm btn-info">
                    <i class="ace-icon fa fa-check-square-o icon-on-right bigger-110"></i>
                    Submit
                  </button>
                <?php endif; ?>
                </div>
              </form>
            </div>
          </div>
    
    <!-- PAGE CONTENT ENDS -->
  </div><!-- /.col -->
</div><!-- /.row -->


