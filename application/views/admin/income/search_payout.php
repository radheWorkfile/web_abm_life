<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/

/* $top_id = $this->uri->segment('3') ? $this->uri->segment('3') : config_item('top_id');
$status = $this->uri->segment('4') ? $this->uri->segment('4') : '';
$sdate  = $this->uri->segment('5') ? $this->uri->segment('5') : '';
$edate  = $this->uri->segment('6') ? $this->uri->segment('6') : '';
$this->db->where('userid', htmlentities($top_id));
if ($status !== "") {
    $this->db->where('status', $status);
}
if ($sdate !== "") {
    $this->db->where('paid_date >=', $sdate);
}
if ($edate !== "") {
    $this->db->where('paid_date <=', $edate);
}
$this->db->limit(100);
$data = $this->db->get('withdraw_request')->result(); */
?>
<div class="row">
    <form method="post" action="">
        <div class="col-sm-6">
            <label>Enter User Id</label>
            <input type="text"  name="top_id" class="form-control">
        </div>
        <div class="col-sm-6">
            <label>Status</label>
            <select name="status" class="form-control" required>
                <option></option>
                <option>Paid</option>
                <option>Un-Paid</option>
                <option>Hold</option>
            </select>
        </div>
        <div class="col-sm-6">
            <label>From Date</label>
            <input type="text" readonly class="form-control datepicker" name="fdate">
        </div> <div class="col-sm-6">
            <label>To Date</label>
            <input type="text" readonly class="form-control datepicker" name="tdate">
        </div>
        <!-- <div class="col-sm-6">
            <label>Start Payout Date</label>
            <input type="text" readonly class="form-control datepicker" name="sdate">
        </div> -->
        <div class="col-sm-6">
           <!--  <label>End Payout Date</label>
            <input type="text" readonly class="form-control datepicker" name="edate"> -->
            <br />
            <button type="submit" class="btn btn-primary">Search</button>
        </div>
    </form>
</div>
<hr />
<div class="table-responsive">
    <table id="example" class="table table-striped">
        <thead>
            <tr>
                <th>S.N.</th>
                <th>User ID</th>
                <th>Amount</th>
                <th>Admin (%)</th>
                <th>Tax (%)</th>
                <th>Net Payable</th>
                <th>Date</th>
                <th>Account Detail</th>
                <th>#</th>
            </tr>
        </thead>
        <tbody>
        <?php
             $page=$this->uri->segment(3);
             $sn = ($page=='')?0:$page;
            //echo"<pre>";
           // print_r($payment);
            foreach ($payment as $e) {
                $tax = config_item('payout_tax') + config_item('payout_admin_tax');
                $totala += $e->without_tax_amt;
                $totalp += $e->amount;
            ?>
                <tr>
                    <td><?php echo ++$sn; ?></td>
                    <td><?php echo config_item('ID_EXT') . $e->userid ?></td>
                    <td><?php echo config_item('currency') . $e->without_tax_amt ?></td>
                    <td><?php echo config_item('payout_tax') ?> %</td>
                    <td><?php echo config_item('payout_admin_tax') ?> %</td>
                    <td><?php echo config_item('currency') . $e->amount  ?></td>
                    <td><?php echo $e->date ?></td>
                    <td style="font-size:12px;">
                        <?php
                        echo $this->db_model->select('name', 'member', array('id' => $e->userid)) . "<br/>";
                        $data = $this->db_model->select_multi('bank_ac_no, bank_name, bank_ifsc, bank_branch, btc_address, tcc_address', 'member_profile', array('userid' => $e->userid));
                        echo $data->bank_name ? '<strong>Bank Name:</strong> ' . $data->bank_name . '<br/>' : '';
                        echo $data->bank_ac_no ? '<strong>A/C No:</strong> ' . $data->bank_ac_no . '<br/>' : '';
                        echo $data->bank_ifsc ? '<strong>IFSC:</strong> ' . $data->bank_ifsc . '<br/>' : '';
                        echo $data->bank_branch ? '<strong>Bank Branch:</strong> ' . $data->bank_branch . '<br/>' : '';
                        echo $data->btc_address ? '<strong>BTC Add:</strong> ' . $data->btc_address . '<br/>' : '';
                        echo $data->tcc_address ? '<strong>TCC Add:</strong> ' . $data->tcc_address . '<br/>' : '';
                        ?>
                    </td>
                    <td><?php if ($e->status == "Un-Paid") { ?>
                            <a data-toggle="modal" data-target="#myModal" onclick="document.getElementById('payid').value='<?php echo $e->id ?>'" class="btn btn-primary btn-xs">Pay</a>
                        <?php } ?>
                        <?php if ($e->status == "Hold") { ?>
                            <a href="<?php echo site_url('income/unhold/' . $e->id) ?>" class="btn btn-success btn-xs">Un-Hold</a>
                        <?php } else { ?>
                            <a href="<?php echo site_url('income/hold/' . $e->id) ?>" class="btn btn-success btn-xs">Hold</a>

                        <?php } ?>
                        <?php if ($e->status == "Paid") { ?>
                            <a href="<?php echo site_url('income/unpay/' . $e->id) ?>" class="btn btn-success btn-xs">Un-Pay</a>
                        <?php } ?>

                        <a href="<?php echo site_url('income/remove/' . $e->id) ?>" class="btn btn-danger btn-xs" onclick="return confirm('Are you sure want to delete this payout ?')">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
        <tfoot>
            <tr>
                <th></th>
                <th style="color:red;"> Total</th>
                <th style="color:red;"><?php echo config_item('currency') .$totala;?></th>
                <th></th>
                <th></th>
                <th style="color:red;"><?php echo config_item('currency'). $totalp;?></th>
            </tr>
        </tfoot>
    </table>
</div>
<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Payout Detail</h4>
            </div>
            <div class="modal-body">
                <?php echo form_open('income/pay') ?>
                <label>Enter Transaction Detail</label>
                <input type="hidden" name="payid" value="" id="payid">
                <textarea class="form-control" name="tdetail"></textarea>
                <div class="pull-right">
                    <button type="submit" class="btn btn-success">Pay Now</button>
                </div>
                <?php echo form_close() ?>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>