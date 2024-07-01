<?php
/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?><?php echo form_open() ?>
    <div class="row">
        <div class="form-group">
            <div class="col-sm-6">
                <label>From User ID <span class="text-danger">*</span></label>
                <input placeholder="From where to deduct epin" value="<?php echo set_value('from') ?>"
                       class="form-control" name="from">
            </div>
            <div class="col-sm-6">
                <label>To User ID <span class="text-danger">*</span></label>
                <input placeholder="Where to transfer epins" value="<?php echo set_value('to') ?>" class="form-control"
                       name="to">
            </div>
            <div class="col-sm-6">
                <label>Amount <span class="text-danger">*</span></label>
                <select name="amount" id="amount" class="form-control">
                <option value="600"><?php  echo number_format(600,2)?></option>
              
            </select>
            </div>
            <div class="col-sm-6">
                <label>Number of Pins <span class="text-danger">*</span></label>
                <input placeholder="How many epin to transfer" value="<?php echo set_value('qty') ?>"
                       class="form-control" name="qty">
            </div>
            <div class="col-sm-6">
                <br/>
                <input type="submit" class="btn btn-primary" value="Transfer" onclick="this.value='Transferring..'">
            </div>
        </div>
    </div><p>&nbsp;</p>
<?php echo form_close() ?>