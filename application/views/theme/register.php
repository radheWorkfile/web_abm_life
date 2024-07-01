<script src="<?php echo base_url();?>media/theme_assets/js/jquery-3.7.1.min.js"></script>

<div class="container p-5">
	<div class="row">
		<div class="col-lg-3  "></div>
		<div class="col-lg-6 ">
			<!--  registration start from here -->
			<?php if (config_item('disable_registration') !== "Yes") { ?>


				<?php echo form_open() ?>
					<h4 align="center" class="mb-2">Register Now !</h4>

					<div id="load" style="display:none !important; margin:2% 0%" align="center">
						<img src="<?php echo site_url('uploads/load.gif') ?>" max-width="50%">
						<h3 style="color:lightseagreen">Registering...</h3>
					</div>



					<div class="container">

						<div class="row" id="form">
							<?php echo validation_errors('<div class="alert alert-danger">', '</div>') ?>
							<?php echo $this->session->flashdata('site_flash') ?>

							
								<div class="col-lg-12">
									<h5 class="text-danger">Personal Information</h5>
								</div>
							

							
								<div class="col-lg-12">
									<div class="form-group">
										<label for="name" class="control-label text-dark" style="font-size: 16px;">Name<span class="text-danger">*</span></label>
										<input type="text" class="form-control" id="name" name="name" value="<?php echo set_value('name') ?>" placeholder="">
									</div>
								</div>
						


						

								<div class="col-lg-12">
									<div class="form-group ">
										<label for="phone" class="control-label text-dark" style="font-size: 16px;">Phone No<span class="text-danger">*</span></label>
										<input type="text" oninput="this.value = this.value.toUpperCase().replace(/[^0-9]/g, '').replace(/(\  *?)\  */g, '$1')" maxlength="10" class="form-control" value="<?php echo set_value('phone') ?>" id="phone" name="phone" placeholder="">
									</div>
								</div>
							


						

								<div class="col-lg-12">
									<div class="form-group">
										<label for="email" class="control-label text-dark" style="font-size: 16px;">Email</label>
										<input type="email" class="form-control" value="<?php echo set_value('email') ?>" id="email" name="email" placeholder="">
									</div>
								</div>
						

						
								<div class="col-lg-12">
									<h5 class="text-danger">Address</h5>
								</div>
						


					

								<div class="col-lg-12">
									<div class="form-group ">
										<label for="address_1" class="control-label text-dark" style="font-size: 16px;">Address Line 1<span class="text-danger">*</span></label>
										<input type="text" class="form-control" value="<?php echo set_value('address_1') ?>" id="address_1" name="address_1">
									</div>
								</div>
						


							

								<div class="col-lg-12">
									<div class="form-group">
										<label for="address_2" class="control-label text-dark" style="font-size: 16px;">Address Line 2</label>
										<input type="text" class="form-control" value="<?php echo set_value('address_2') ?>" id="address_2" name="address_2">
									</div>
								</div>
							



							

								<div class="col-lg-12">
									<h5 class="text-danger">Password</h5>
								</div>
						

						

								<div class="col-lg-12">
									<div class="form-group">
										<label for="password" class="control-label text-dark" style="font-size: 16px;">Password<span class="text-danger">*</span></label>
										<input type="password" class="form-control" value="<?php echo set_value('password') ?>" id="password" name="password">
									</div>
								</div>
							


						

								<div class="col-lg-12">
									<div class="form-group ">
										<label for="password_2" class="control-label text-dark" style="font-size: 16px;">Retype Password<span class="text-danger">*</span></label>
										<input type="password" class="form-control" value="<?php echo set_value('password_2') ?>" id="password_2" name="password_2">
									</div>
								</div>
						
							

								<div class="col-lg-12">
									<h5 class="text-danger">Joining Information</h5>
								</div>
							

						

								<div class="col-lg-12">
									<div class="form-group">
										<label for="sponsor" class="control-label text-dark" style="font-size: 16px;">Sponsor ID<span class="text-danger">*</span></label>
										<input type="text" onchange="get_user_name('#sponsor', '#spn_res')" class="form-control" value="<?php if ($this->uri->segment(3) !== "epin") {
																																			$uri4 = $this->uri->segment(4);
																																		};
																																		echo set_value('sponsor', $uri4) ?>" id="sponsor" name="sponsor" placeholder="">
										<span id="spn_res" style="color: red; font-weight: bold"></span>
									</div>
								</div>
							


						


								<div class="col-lg-12">
									<?php if (config_item('leg') !== "1" && config_item('show_placement_id') == "Yes" && config_item('autopool_registration') == "No") { ?>
										<div class="form-group">
											<label for="position" class="control-label text-dark" style="font-size: 16px;">Placement ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="psn_res" style="color: red; font-weight: bold"></span></label>
											<input type="text" class="form-control" onchange="get_user_name('#position', '#psn_res')" id="position" value="<?php if ($this->uri->segment(3) !== "epin") {
																																								$uri4 = $this->uri->segment(4);
																																							};
																																							echo set_value('position', $uri4) ?>" name="position" id="position" placeholder="Where you want to place the ID">
										</div>
									<?php
									} ?>
								</div>

							


						


								<div class="col-lg-12">
									<?php if (config_item('leg') == "1" && config_item('show_placement_id') == "Yes") { ?>
										<div class="form-group">
											<label for="position" class="control-label text-dark" style="font-size: 16px;">Placement ID &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="psn_res" style="color: red; font-weight: bold"></span></label>
											<input type="text" class="form-control" onchange="get_user_name('#position', '#psn_res')" id="position" value="<?php if ($this->uri->segment(3) !== "epin") {
																																								$uri4 = $this->uri->segment(4);
																																							};
																																							echo set_value('position', $uri4) ?>" name="position" placeholder="Where you want to place the ID">
										</div>
									<?php
									} ?>
								</div>
							





							

								<div class="col-lg-12">
									<?php if (config_item('leg') == "1") {
										echo form_hidden('leg', 'A');
									} else {
										if (config_item('show_leg_choose') == "Yes" && config_item('autopool_registration') == "No") {
									?>
											<div class="form-group ">
												<label for="leg" class="control-label text-dark" style="font-size: 16px;">Position<span class="text-danger">*</span></label>
												<select class="form-control" id="leg" name="leg">
													<option value="">Select One</option>
													<?php
													$lg = '';
													if (trim($this->uri->segment(3)) !== "" && trim($this->uri->segment(3)) !== "epin") {
														$lg = trim($this->uri->segment(3));
													}
													?>
													<?php foreach ($leg as $key => $val) { ?>
														<option value="<?php echo $key; ?>" <?php echo ($lg == $key) ? "Selected" : " " ?>><?php echo $val; ?></option>
													<?php } ?>
												</select>
											</div>
									<?php }
									} ?>
								</div>
							

							<!-- <div class="row">
		<div class="col-sm-4"></div>
		<div class="col-sm-7">
			<?php //if (config_item('show_join_product') == "Yes") {
			?>
				<div class="form-group col-sm-6">
					<label for="product" class="control-label">Sign Up Product / Package</label>
					<select class="form-control" id="product" name="product" >
						<?php foreach ($products as $val) {
							echo '<option value="' . $val['id'] . '">' . $val['prod_name'] . '. Price :' . config_item('currency') . number_format($val['prod_price'] + ($val['prod_price'] * $val['gst'] / 100), 2) . ' </option>';
						} ?>

					</select>
				</div>
				<?php
				//} 
				?>
		</div>
	</div> -->
							<input type="hidden" id="product" name="product" value="1">

						

								<div class="col-lg-12">
									<?php if (config_item('enable_epin') == "Yes" && config_item('free_registration') == "No") {
									?>
										<div class="form-group" id="e_pin">
											<label for="epin" class="control-label text-dark" style="font-size: 16px;">e-PIN</label>
											<input type="text" value="<?php if (trim($this->uri->segment(3)) == "epin") {
																			echo set_value('epin', $this->uri->segment(4));
																		} ?>" class="form-control" id="epin" name="epin">
										</div>
									<?php } ?>
								</div>
							


								<div class="col-lg-12">
									<?php if (config_item('show_join_product') == "No" && config_item('free_registration') == "No") {
									?>
										<div class="form-group " id="amt_to_pay">
											<label for="amt_to_pay" class="control-label text-dark" style="font-size: 16px;">Amount You Want to Pay ?</label>
											<input type="text" required value="<?php echo set_value('amt_to_pay') ?>" class="form-control" id="amt_to_pay" name="amt_to_pay">
										</div>
									<?php } ?>
								</div>
							

						

								<div class="col-lg-12">
									<?php if (config_item('enable_pg') == "Yes" && config_item('free_registration') == "No") {
									?>
										<div class="form-group ">
											<label for="epin" class="control-label text-dark" style="font-size: 16px;color: #3a80d7">Payment Gateway</label><br />
											<input type="checkbox" value="yes" id="pg" name="pg" onclick="toogle_div('#e_pin', '#pg')"> I'll Pay
											Using
											Payment
											Gateway.
										</div>
									<?php
									}
									?>
								</div>
							

							

								<div class="col-lg-12 mb-3">
									<div class="form-group">
										<button class="btn btn-primary btn-lg  mt-2" type="submit" onclick="show()">Register</button>
									</div>
								</div>
							














						</div>
					</div>

				<?php echo form_close();?>

			<?php } else {
				echo "<h3 align='center' style='margin: 10%'> Registration is disabled for maintanance. Please come later.</h3>";
			} ?>



			<!--  registration start from here -->
		</div>
		<div class="col-lg-3  "></div>

	</div>
</div>





<script type="text/javascript">
	function toogle_div(id1, id2) {
		if ($(id2).prop("checked") == true) {
			$(id1).hide('slow');
		} else {
			$(id1).show('slow');
		}
	}

	function show() {
		$('#form').hide('slow');
		$('#load').show('slow');
	}

	function get_user_name(id, result) {
		var id = $(id).val();
		$.get("<?php echo site_url('site/get_user_name/') ?>" + id, function(data) {
			$(result).html(data);
		});
	}
</script>