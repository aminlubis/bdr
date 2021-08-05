
<link rel="stylesheet" href="<?php echo base_url()?>assets/css/bootstrap.css" />
<link rel="stylesheet" href="<?php echo base_url()?>assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />

<div class="row">
  <div class="col-xs-12">
    <!-- PAGE CONTENT BEGINS -->
          <div class="widget-body">
            <div class="widget-main no-padding">
              <div class="col-md-3">
                <table class="table table-bordered">
                  <tr>
                    <td colspan="2" class="center">IN PAYMENT OF</td>
                  </tr>
                  <tr>
                    <td>INVOICE NO./REF</td>
                    <td>AMOUNT</td>
                  </tr>
                  <tr>
                    <td align="center"><?php echo $value->invoice_no?></td>
                    <td align="right">Rp. <?php echo number_format($value->amount)?></td>
                  </tr>
                  <?php for($i=1; $i<7; $i++) :?>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <?php endfor; ?>
                  <tr>
                    <td>TOTAL</td>
                    <td align="right">Rp. <?php echo number_format($value->amount)?></td>
                  </tr>

                </table>
                <br><br>
                <table class="table table-bordered">
                  <tr>
                    <td colspan="2" class="center">FORM OF PAYMENT</td>
                  </tr>
                  <tr>
                    <td>CURRENCY</td>
                    <td>AMOUNT</td>
                  </tr>
                  <tr>
                    <td>CHECK NO.</td>
                    <td>Rp.</td>
                  </tr>
                  <tr>
                    <td align="center"><?php echo $value->check_no?></td>
                    <td align="right">Rp. <?php echo number_format($value->check_amount)?></td>
                  </tr>
                  <?php for($i=1; $i<3; $i++) :?>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <?php endfor; ?>
                  <tr>
                    <td>TOTAL</td>
                    <td align="right">Rp. <?php echo number_format($value->check_amount)?></td>
                  </tr>

                </table>

              </div>

              <div class="col-md-9">
                  <br>
                  <br>
                  <br>
                  <br>
                    <table class="table table-bordered" style="width: 50%">
                      <tr>
                        <td align="right">No. <?php echo $value->letter_no?></td>
                      </tr>
                      <tr>
                        <td align="right"><?php echo $this->tanggal->formatDate($value->invoice_date)?></td>
                      </tr>

                      <tr>
                        <td>
                          RECIVED FROM <?php echo strtoupper($value->received_from)?> <br>
                          <span><?php echo ucwords($value->address)?></span>
                        </td>
                      </tr>

                      <tr><td>&nbsp;</td></tr>
                      <tr><td>&nbsp;</td></tr>
                      <tr><td>&nbsp;</td></tr>

                      <tr>
                        <td>
                         THE SUM OF RUPIAHS :  <br>
                         <?php $terbilang = new Kuitansi(); echo ucwords($terbilang->terbilang($value->amount))?> Rupiah
                        </td>
                      </tr>

                    </table>
              </div>

            </div>
          </div>
    
    <!-- PAGE CONTENT ENDS -->
  </div><!-- /.col -->
</div><!-- /.row -->

