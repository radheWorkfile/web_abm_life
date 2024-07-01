<?php
/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<?php echo form_open() ?>
<div class="row">
    <div class="col-sm-1"></div>
    <div class="col-sm-5">
        <label>e-PIN Amount<span class="text-danger">*</span></label>
        <div class="input-group">
            <span class="input-group-addon">₹</span>
            <select name="amount" id="amount" class="form-control">
                <option value="600"><?php  echo number_format(600,2)?></option>               
            </select>
            <!-- <input type="text" class="form-control" value="1100"
                   placeholder="For free e-pin enter 0" name="" readonly> -->
        </div>
    </div>
    <div class="col-sm-5">
        <label>User ID / Franchisee ID (Whom to issue)<span class="text-danger">*</span></label>
        <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
            <input type="text" value="<?php echo set_value('userid') ?>" class="form-control" placeholder="1001"
                   name="userid">
        </div>
    </div>
    <div class="col-sm-1"></div>
</div>
<div>&nbsp;</div>
<div class="row">
    <div class="col-sm-1"></div>
    <div class="col-sm-5">
        <label>Number of e-PINs<span class="text-danger">*</span></label>
        <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-arrow-right"></span></span>
            <input type="number" value="<?php echo set_value('number') ?>" placeholder="Maximum 999 epin at a time"
                   class="form-control" name="number">
        </div>
    </div>
    <div class="col-sm-1"></div>
</div>
<div class="col-sm-1"></div>
<div class="col-sm-5">
    <div>&nbsp;</div>
    <input type="submit" class="btn btn-danger" onclick="this.value='Please Wait..'" value="Generate e-PINs">
</div>
<?php echo form_close() ?>
