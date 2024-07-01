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
<div class="row">
    <div class="col-sm-6">
        <label>Enter User ID</label>(From where to transfer balance)
        <input type="text" class="form-control" id="uid" name="userid">
    </div>
    <div class="col-sm-6">
        <br/>
        <button type="button" onclick="populate()" class="btn btn-info">Populate</button>
    </div>
</div>
<div class="row" id="hidden" style="display: none">
    <div class="col-sm-6">
        <h3 class="hr_divider"><br/>
            <strong><strong style="color: #0cc745">Available Wallet Balance:
                    <?php echo config_item('currency') ?> <span id="qty"></span></strong>
        </h3>
        <p style="margin-top:100px;">
            <label>Enter Amount:</label>
            <input type="text" name="amount" required class="form-control" value="1"><br/>
            <label>Transfer to User ID:</label>
            <input type="text" name="transferid" required class="form-control"><br/>
            <button class="btn btn-success" name="submit" value="add">Transfer</button>
        </p>
    </div>
</div>
<script type="text/javascript">
    function populate() {
        var uid = $('#uid').val();
        if (uid == "") {
            alert('Please enter User ID');
        } else {
            $.get("<?php echo site_url('cron/get_wallet_balance/') ?>" + uid, function (data) {
                $("#hidden").show('slow');
                $("#qty").html(data);
            });
        }
    }
</script>
<?php echo form_close() ?>

