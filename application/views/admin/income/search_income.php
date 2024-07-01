<?php
/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<div class="row">
    <?php echo form_open('income/search') ?>
    <div class="alert alert-info">Fill any or all fields as per your need.</div>
    <div class="col-sm-6">
        <label>Income Type</label>
        <select class="form-control" name="income_name">
            <option selected>All</option>
            <option value="Matching Income">Matching Income</option>
            <option value="Sponsor Matching Income">Sponsor Matching Income</option>
            <!-- <?php foreach (config_item('income_name') as $key => $val) {
                echo '<option value="' . $key . '">' . $val . '</option>';
            } ?> -->
        </select>
    </div>
    <div class="col-sm-6">
        <label>User ID</label>
        <input type="text" class="form-control" id="userid" name="userid">
    </div>
    <div class="col-sm-6">
        <label>Start Date</label>
        <input type="text" class="form-control datepicker" readonly id="startdate" name="startdate">
    </div>
    <div class="col-sm-6">
        <label>End Date</label>
        <input type="text" class="form-control datepicker" readonly id="enddate" name="enddate">
    </div>
    <div class="col-sm-12"><br/>
        <input type="submit" class="btn btn-success" value="Search" onclick="this.value='Searching..'">
    </div>
    <?php echo form_close() ?>
</div>