<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Bidush Sarkar
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/

$top_id = $this->uri->segment('3') ? $this->uri->segment('3') : config_item('top_id');

?>
<style>
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 50%;
    }
</style>
<div class="row">

    <div class="col-sm-5">
        <table class="table">
            <tr>
                <td style="font-size: 12px" width="33.33%">
                    <img src="<?php echo base_url('uploads/site_img/green.png') ?>"><br />
                    Green User
                </td>
                <td style="font-size: 12px" width="33.33%">
                    <img src="<?php echo base_url('uploads/site_img/red.png') ?>"><br />
                    Red User
                </td>
                <td style="font-size: 12px" width="33.33%">
                    <img src="<?php echo base_url('uploads/site_img/new.png') ?>"><br />
                    No User
                </td>
            </tr>
        </table>
    </div>

    <div class="col-sm-5">
        <form method="post" action="<?php echo site_url('tree/user_tree') ?>">
            <label>Enter User Id</label>
            <input type="text" name="top_id" class="form-control">
            <button class="btn btn-xs btn-danger" type="submit">Search</button>
        </form>
    </div>

    <hr />
</div>

<div class="row">

    <?php if ($top_id == '1001') { ?>
        <div class="hr_divider container" style="text-align: center; overflow:auto;height:100% ">
            <p>&nbsp;</p>
            <div class="table-responsive" style="overflow-x: auto; text-align: left">
                <table align="center" class="table" style="max-width: 500px">
                    <tr>
                        <td colspan="3" class="alert alert-warning"> <?php $U = $this->plan_model->create_tree($top_id);
                                                                        echo $U['data'] ?></td>
                    </tr>
                    <?php

                    $this->db->select('id, name, total_a, mypv, topup, total_a_pv, my_img')->where('sponsor', $top_id);
                    $data = $this->db->get('member')->result();

                    foreach ($data as $e) {
                        if ($e->topup == "0.00") {
                            $color = 'red';
                        } else {
                            $color = 'green';
                        }

                        $dat = $this->db->select('*')->from('level')->where('userid', $e->id)->get()->row_array();
                        $down = 0;
                        for ($i = 1; $i <= 20; $i++) {
                            $down += $dat['level' . $i];
                        }

                        $myimg = $e->my_img ? base_url('uploads/' . $e->my_img) : base_url('uploads/site_img/' . $color . '.png');
                        echo '<tr>
                        <td></td>
                        <td></td>
                        <td style="border-left: 4px dashed #006aeb;"><span style="color: #006aeb"> -----------></span>
                      <span style="text-align: center"><a href="' . site_url('tree/user_tree/' . $e->id) . '" style="text-decoration: none; color: ' . $color . '; margin: 5px" data-toggle="popover" data-trigger="hover" data-html="true" data-placement="top" title="<div align=\'left\'><strong>' . config_item('ID_EXT') . $e->id . '</strong><hr/>Total Downline:' . ($down) . '</div>"><img class="img-circle" style="max-height: 70px" src="' . $myimg . '"><br/>' . $e->name . '<br/>(' . config_item('ID_EXT') . $e->id . ')</a></span> </td></tr>';
                    }
                    ?>

                </table>
            </div>
        </div>
    <?php } ?>



    <?php if (config_item('leg') == "2" && $top_id != 1001) { ?>
        <div class="col-sm-12">


            <div class="row">
                <!-- 1st start -->
                <div class="col-sm-12 col-lg-12 col-md-12 col-xs-12 col-12 text-center">
                    <?php $U = $this->plan_model->create_tree($top_id);
                    echo $U['data'] ?><br />
                    <img src="<?php echo base_url('uploads/site_img/line_bg.gif') ?>" class="img-responsive center ">
                </div>
            </div>
            <!-- 1st end -->

            <!-- 2nd start -->
            <div class="row">
                <div class="col-sm-6 col-lg-6 col-md-6 col-xs-6 col-6 text-center">
                    <?php $A = $this->plan_model->create_tree($U['A'], $U['id'], 'A');
                    echo $A['data'] ?><br />
                    <img src="<?php echo base_url('uploads/site_img/line_sm.gif') ?>" class="img-responsive center">
                </div>

                <div class="col-sm-6 col-lg-6 col-md-6 col-xs-6 col-6 text-center">
                    <?php $B = $this->plan_model->create_tree($U['B'], $U['id'], 'B');
                    echo $B['data'] ?><br />
                    <img src="<?php echo base_url('uploads/site_img/line_sm.gif') ?>" class="img-responsive center">
                </div>
            </div>

            <!-- 2nd end -->

            <!-- third start -->
            <div class="row">

                <div class="col-sm-3 col-lg-3 col-md-3 col-xs-3 col-3 text-center">
                    <?php $A_1 = $this->plan_model->create_tree($A['A'], $A['id'], 'A');
                    echo $A_1['data'] ?>
                </div>

                <div class="col-sm-3 col-lg-3 col-md-3 col-xs-3 col-3 text-center">
                    <?php $A_2 = $this->plan_model->create_tree($A['B'], $A['id'], 'B');
                    echo $A_2['data'] ?>
                </div>

                <div class="col-sm-3 col-lg-3 col-md-3 col-xs-3 col-3 text-center">
                    <?php $B_1 = $this->plan_model->create_tree($B['A'], $B['id'], 'A');
                    echo $B_1['data'] ?>
                </div>

                <div class="col-sm-3 col-lg-3 col-md-3 col-xs-3 col-3 text-center">
                    <?php $B_2 = $this->plan_model->create_tree($B['B'], $B['id'], 'B');
                    echo $B_2['data'] ?>
                </div>

                <!-- third end -->


            </div>

        </div>
    <?php } ?>
</div>