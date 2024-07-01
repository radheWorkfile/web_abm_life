<?php
/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Bidush Sarkar
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<div class="row">
    <h2 align="center">My ID: <?php echo $this->session->fran_id ?></h2>
    <?php echo form_open() ?>
    <div class="col-sm-6">
        <label>Name</label>
        <input type="text" class="form-control" value="<?php echo set_value('name', $result->name) ?>" name="name">
    </div>
    <div class="col-sm-6">
        <label>Email ID</label>
        <input type="email" class="form-control" value="<?php echo set_value('email', $result->email) ?>" name="email">
    </div>
    <div class="col-sm-6">
        <label>Phone No</label>
        <input type="text" class="form-control" value="<?php echo set_value('phone', $result->phone) ?>" name="phone">
    </div>

    <div class="col-sm-6">
        <label>New Password</label>
        <input type="password" class="form-control" value="<?php echo set_value('newpass') ?>" name="newpass">
    </div>
    <div class="col-sm-6"><br/>
        <input type="submit" class="btn btn-success" value="Update" onclick="this.value='Updating..'">
    </div>
    <?php echo form_close() ?>
</div>