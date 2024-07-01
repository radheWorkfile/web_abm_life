<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Bidush Sarkar
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<div class="table-responsive">
    <table class="table table-striped" style="font-size:13px">
        <thead>
            <tr>
                <th>SN</th>
                <th>User ID</th>
                <th>Name</th>
                <th>Sponsor ID</th>
                <th>Available Wallet Balance</th>
                <th>Phone</th>
                <?php if (config_item('enable_investment') == "Yes") {
                    echo '<th>My Investment</th>';
                }
                ?>
                <th>Join Date</th>
                <th>Total Downline</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
             $page=$this->uri->segment(3);
            $sn = ($page=='')?0:$page;
            foreach ($members as $i=>$e) { ?>
                <tr>
                    <td><?php echo ++$sn; ?></td>
                    <td><a href="<?php echo site_url('users/user_detail/' . $e['id']) ?>" target="_blank"><?php echo config_item('ID_EXT') . $e['id']; ?></a></td>
                    <td><?php echo $e['name']; ?></td>
                    <td><a href="<?php echo site_url('users/user_detail/' . $e['sponsor']) ?>" target="_blank"><?php echo $e['sponsor'] ? config_item('ID_EXT') . $e['sponsor'] : ''; ?></td>
                    <td><?php echo '₹ ' . number_format($this->db_model->select('balance', 'wallet', array('userid' => $e['id'])), 2); ?></td>
                    <td><?php echo $e['phone']; ?></td>
                    <?php if (config_item('enable_investment') == "Yes") {
                        echo '<td>$ ' . $e['topup'] . '</td>';
                    }
                    ?>
                    <td><?php echo date('d-M-Y', strtotime($e['join_time'])); ?></td>
                    <td><?php echo ($e['total_a'] + $e['total_b'] + $e['total_c'] + $e['total_d'] + $e['total_e']); ?></td>
                    <td>
                        <?php if (config_item('enable_topup') == "Yes" && $e['topup'] <= 0) { ?>
                            <a href="<?php echo site_url('users/topup_member/' . $e['id']); ?>" class="btn btn-warning btn-xs">Top Up</a>
                        <?php } ?>
                        <a href="<?php echo site_url('users/user_detail/' . $e['id']); ?>" class="btn btn-warning btn-xs">View</a>
                        <a href="<?php echo site_url('users/edit_user/' . $e['id']); ?>" class="btn btn-info btn-xs">Edit</a>
                        

                        <a href="<?php echo site_url('users/login_member/' . $e['id']); ?>" target="_blank" class="btn btn-danger btn-xs">Login</a>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
<div class="pull-right">
    <?php echo $this->pagination->create_links(); ?>
</div>
<a href="<?php echo site_url('admin') ?>" class="btn btn-xs btn-danger">&larr; Go Back</a>
<!-- <a onclick="return confirm('Are you sure you want to delete this Member ?')"
                        href="<?php echo site_url('users/remove_member/' . $e['id']); ?>" class="btn btn-danger btn-xs">Delete</a> -->