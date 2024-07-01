<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<table id="example" class="table table-striped">
    <thead>
        <tr>
            <th>SN</th>
            <th>Name</th>
            <th>Username</th>
            <th>Store Name</th>
            <th>Country</th>
            <th>State</th>
            <th>eMail</th>
            <th>Phone</th>
            <th>Address</th>
            <th>Status</th>
            <th>#</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sn = 1;
        foreach ($fran as $e) { ?>
            <tr>
                <td><?php echo $sn++; ?></td>
                <td><?php echo $e['name']; ?></td>
                <td><?php echo $e['username']; ?></td>
                <td><?php echo $e['business_name']; ?></td>
                <td><?php echo $e['country']; ?></td>
                <td><?php echo $e['state']; ?></td>
                <td><?php echo $e['email']; ?></td>
                <td><?php echo $e['phone']; ?></td>
                <td><?php echo $e['address']; ?></td>
                <td><?php echo $e['status']; ?></td>
                <td>
                    <a href="<?php echo site_url('adm-franchisee/edit-fran/' . $e['id']); ?>" class="btn btn-info btn-xs glyphicon glyphicon-pencil"></a>
                    <a onclick="return confirm('Are you sure you want to delete this epin ?')" href="<?php echo site_url('adm-franchisee/remove-fran/' . $e['id']); ?>" class="btn btn-danger btn-xs glyphicon glyphicon-remove"></a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>
</div>
<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>
</div>