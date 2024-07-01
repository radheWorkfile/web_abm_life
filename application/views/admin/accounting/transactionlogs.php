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
            <th>User / Fran Id</th>
            <th>Gateway</th>
            <th>Transaction Id</th>
            <th>Amount</th>
            <th>Date</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sn = 1;
        foreach ($result as $e) { ?>
            <tr>
                <td><?php echo $sn++; ?></td>
                <td><?php echo $e->userid; ?></td>
                <td><?php echo $e->gateway; ?></td>
                <td><?php echo $e->transaction_id; ?></td>
                <td><?php echo config_item('currency') . $e->amount; ?></td>
                <td><?php echo date('d/m/Y', $e->time); ?></td>
                <td>
                    <a onclick="return confirm('Are you sure you want to delete this Record ?')" href="<?php echo site_url('accounting/remove_tlog/' . $e->id); ?>" class="btn btn-danger btn-xs">Delete</a>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>
<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>
</div>