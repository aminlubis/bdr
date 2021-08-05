<div class="row">
  <div class="col-xs-12">

    <div class="page-header">
      <h1>
        <?php echo $title?>
        <small>
          <i class="ace-icon fa fa-angle-double-right"></i>
          <?php echo isset($breadcrumbs)?$breadcrumbs:''?>
        </small>
      </h1>
    </div><!-- /.page-header -->

    <div class="clearfix" style="margin-bottom:-5px" id="show_button">
      <?php echo $this->authuser->show_button('invoice/C_create_invoice','C','',1)?>
      <?php echo $this->authuser->show_button('invoice/C_create_invoice','D','',5)?>
      <?php echo $this->authuser->show_button('invoice/C_create_invoice','EX','',1)?>
    </div>
    
    <hr class="separator">
    <!-- div.dataTables_borderWrap -->
    <div style="margin-top:-27px">
      <table id="dynamic-table" base-url="invoice/C_create_invoice" class="table table-bordered table-hover">
       <thead>
        <tr>  
          <th width="30px" class="center"></th>
          <th width="120px">&nbsp;</th>
          <th>Letter No.</th>
          <th>Date</th>
          <th>Received From</th>
          <th>Invoice No.</th>
          <th>Amount</th>
          <th>Check No.</th>
          <th>Check Amount</th>
          <th width="100px">Last Update</th>
          <th width="30px"></th>
        </tr>
      </thead>
      <tbody>
      </tbody>
    </table>
    </div>
  </div><!-- /.col -->
</div><!-- /.row -->

<script src="<?php echo base_url().'assets/js/custom/als_datatable.js'?>"></script>



