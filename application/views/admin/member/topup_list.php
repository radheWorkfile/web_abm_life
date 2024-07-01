<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>

<table  class="table table-striped">
    <thead>
        <tr>
            <th>SN</th>
            <th>User ID</th>
            <th>E-Pin</th>
            <th>Topup Amount</th>
            <th>Topup By</th>
            <th>Date</th>
        </tr>
    </thead>
    <tbody>
        <?php
          $page=$this->uri->segment(3);
          $sn = ($page=='')?0:$page;
       
        foreach ($topup as $t) { ?>
            <tr>
                <td><?php echo ++$sn; ?></td>
                <td><?php echo $t['user_id']; ?></td>
                <td><?php echo $t['epin']; ?></td>
                <td><?php echo config_item('currency') . $t['topup_amount']; ?></td>
                <td><?php echo $t['topup_by'] ; ?></td>
                <td><?php echo date('d-M-Y',strtotime($t['date'])) ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>
</div>