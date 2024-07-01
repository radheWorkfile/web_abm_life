<?php

/***************************************************************************************************
 * Copyright (c) 2020. by Camwel Corporate Solution PVT LTD
 * This project is developed and maintained by Camwel Corporate Solution PVT LTD.
 * Nobody is permitted to modify the source or any part of the project without permission.
 * Project Developer: Camwel Corporate Solution PVT LTD
 * Developed for: Camwel Corporate Solution PVT LTD
 **************************************************************************************************/
?>
<div class="row" style="max-width: 100%;">
    <div class="col-sm-12" style="overflow-x: auto; ">
        <table id="example" class="table table-striped table-responsive">
            <thead>
                <tr>
                    <th>S.N.</th>
                    <th>Name</th>
                    <th>Join Date</th>
                    <th>Total Downline</th>
                    <th>Sponsor ID</th>
                </tr>
            </thead>
            <tbody>
                <?php $this->plan_model->ref_list($this->session->user_id) ?>
            </tbody>
        </table>

    </div>
</div>