<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/

$top_id = $this->uri->segment('3') ? $this->uri->segment('3') : $this->session->user_id;

?>







<div class="row">


    <!-- =========================start============================ -->



    <div class="col-sm-12">
        <div class="table-responsive">
            <table class="table table-borderless">
                <tbody>
                    <tr>
                        <td colspan="9" align="center"><?php $U = $this->plan_model->create_tree_auto($top_id);
                                                        echo $U['data'] ?><br /><img src="<?php echo base_url('uploads/site_img/line_bg.gif') ?>" class="img-responsive">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><?php $A = $this->plan_model->create_tree_auto($U['A'], $U['id'], 'A');
                                                        echo $A['data'] ?><br /><img src="<?php echo base_url('uploads/site_img/line_sm.gif') ?>" class="img-responsive">
                        </td>
                        <td colspan="3" align="center"><?php $B = $this->plan_model->create_tree_auto($U['B'], $U['id'], 'B');
                                                        echo $B['data'] ?><br /><img src="<?php echo base_url('uploads/site_img/line_sm.gif') ?>" class="img-responsive">
                        </td>
                        <td colspan="3" align="center"><?php $C = $this->plan_model->create_tree_auto($U['C'], $U['id'], 'C');
                                                        echo $C['data'] ?><br /><img src="<?php echo base_url('uploads/site_img/line_sm.gif') ?>" class="img-responsive">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="1" align="left"><?php $A_1 = $this->plan_model->create_tree_auto($A['A'], $A['id'], 'A');
                                                        echo $A_1['data'] ?><br />
                        </td>
                        <td colspan="1" align="center"><?php $A_2 = $this->plan_model->create_tree_auto($A['B'], $A['id'], 'B');
                                                        echo $A_2['data'] ?><br />
                        </td>
                        <td colspan="1" align="right"><?php $A_3 = $this->plan_model->create_tree_auto($A['C'], $A['id'], 'C');
                                                        echo $A_3['data'] ?><br />
                        </td>
                        <td colspan="1" align="left"><?php $B_1 = $this->plan_model->create_tree_auto($B['A'], $B['id'], 'A');
                                                        echo $B_1['data'] ?><br />
                        </td>
                        <td colspan="1" align="center"><?php $B_2 = $this->plan_model->create_tree_auto($B['B'], $B['id'], 'B');
                                                        echo $B_2['data'] ?><br />
                        </td>
                        <td colspan="1" align="right"><?php $B_3 = $this->plan_model->create_tree_auto($B['C'], $B['id'], 'C');
                                                        echo $B_3['data'] ?><br />
                        </td>
                        <td colspan="1" align="left"><?php $C_1 = $this->plan_model->create_tree_auto($C['A'], $C['id'], 'A');
                                                        echo $C_1['data'] ?><br />
                        </td>
                        <td colspan="1" align="center"><?php $C_2 = $this->plan_model->create_tree_auto($C['B'], $C['id'], 'B');
                                                        echo $C_2['data'] ?><br />
                        </td>
                        <td colspan="1" align="right"><?php $C_3 = $this->plan_model->create_tree_auto($C['C'], $C['id'], 'C');
                                                        echo $C_3['data'] ?><br />
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>