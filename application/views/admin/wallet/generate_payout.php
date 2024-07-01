<?php
/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Bidush Sarkar
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<?php echo form_open() ?>
<div class="alert alert-info alert-dismissable">
    <i class="close fa fa-close" data-dismiss="alert" aria-label="close"></i>
    <strong>Note :</strong> You are Now about to withdraw balances for all users.
</div>
<div class="alert alert-danger">
    <strong>Warning!</strong> If you click on generate button below, then All the balances of Users that has wallet
    balance of more then <?php echo config_item('currency') . config_item('min_withdraw') ?> will be withdrawn. This is
    not fully reversible. So if you want to generate payout for one user Then
    <a href="<?php echo site_url('wallet/withdraw-fund') ?>" class="alert-link"> Click
        Here &rarr;</a>
</div>

<div class="row">
    <div class="col-sm-6">
        <label>Enter Admin Password</label>
        <input type="password" required class="form-control" id="password" name="password">
    </div>
    <div class="col-sm-6">
        <br/>
        <button type="submit" onclick="return confirm('Are you sure ?')" type="submit" class="btn btn-info">Generate
        </button>
    </div>
</div>
<?php echo form_close() ?>

