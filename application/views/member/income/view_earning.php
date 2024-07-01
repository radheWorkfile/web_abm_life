<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>

<div style="overflow-x:auto;">
    <table id="example" class="table table-responsive table-striped ">
        <thead>
            <tr>
                <th>SN</th>
                <th>Amount</th>
                <th>Type</th>
                <th>Ref ID</th>
                <th>Date</th>
                <th>Pair Match</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $page=$this->uri->segment(3);
            $sn = ($page=='')?0:$page;
            foreach ($earning as $e) { ?>
                <tr>
                    <td><?php echo ++$sn; ?></td>
                    <td><?php echo config_item('currency') . $e['amount']; ?></td>
                    <td><?php echo $e['type']; ?></td>
                    <td><?php echo $e['ref_id'] ? config_item('ID_EXT') . $e['ref_id'] : ""; ?></td>
                    <td><?php echo $e['date']; ?></td>
                    <td><?php echo $e['pair_match']; ?></td>
                </tr>
            <?php } ?>
        </tbody>
    </table>

</div>



<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>
</div>