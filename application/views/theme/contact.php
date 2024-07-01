

	<!-- START SECTION TOP -->
	<section class="section-top" style="background-image: url(<?php echo base_url()?>media/theme_assets/img/bg/section-bg.jpg);  background-size:cover; background-position: center center;">
		<div class="container">
			<div class="col-lg-12 col-sm-12 col-xs-12 text-center">
				<div class="section-top-title">
					<h1>Contact Us</h1>
				</div><!-- //.HERO-TEXT -->
			</div><!--- END COL -->
		</div><!--- END CONTAINER -->
	</section>	
	<!-- END SECTION TOP -->

	<!-- ADDRESS -->
	<div class="address section-padding">
		<div class="container">
			<div class="row text-center">
				<div class="col-lg-4 col-sm-6 col-xs-12 action_l">
					<div class="single_address ">
						<div class="address_br"><span class="ti-mobile"></span></div>
						<h4>Phone</h4>
						<p>+91 9028388889, 9572852742</p>
					
					</div>
				</div><!--- END COL -->
				<div class="col-lg-4 col-sm-6 col-xs-12 action">
					<div class="single_address">
						<div class="address_br"><span class="ti-email"></span></div>
						<h4>Email</h4>
						<p><a href="mailto:camwelsolution@gmail.com;" style="color:rgb(139,117,139,1)!important;">camwelsolution@Gmail.Com</a></p>
					</div>
				</div><!--- END COL -->
				<div class="col-lg-4 col-sm-6 col-xs-12 action_r">
					<div class="single_address">
						<div class="address_br"><span class="ti-location-pin"></span></div>
						<h4>Address</h4>
						<p>Patna,   Bihar</p>
					</div>
				</div><!--- END COL -->	
			</div><!--- END ROW -->	
		</div><!--- END CONTAINER -->
	</div>
	<!-- END ADDRESS -->			

	<!-- START CONTACT -->
	<section id="contact" class="contact_us section-padding">
		<div class="container">
			<div class="row contact_us_bg">
				<div class="col-lg-7 col-sm-12 col-xs-12 ">
					<div class="contact">
						<h4>How can we help you?</h4>
						<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
						<form class="form" name="enq" method="post" action="<?php echo base_url()?>Site/contact_us;" onsubmit="return validation();">
							<div class="row">
								<div class="form-group col-md-6">
									<input type="text" name="name" class="form-control" placeholder="Name" required="required">
								</div>
								<div class="form-group col-md-6">
									<input type="email" name="email" class="form-control" placeholder="Email" required="required">
								</div>
								<div class="form-group col-md-12">
									<input type="number" name="mobile" class="form-control" placeholder="Mobile Number *" required="required">
								</div>
								<div class="form-group col-md-12">
									<textarea rows="6" name="message" class="form-control" placeholder="Your Message" required="required"></textarea>
								</div>


								<div class="col-md-12 text-center">
									<button type="submit" value="Send message" name="submit" id="submitButton" class="btn btn-lg contact_btn" title="Submit Your Message!">Send Message</button>
								</div>
							</div>
						</form>
					</div>
				</div><!-- END COL  -->	
				<div class="col-lg-5 col-sm-12 col-xs-12">	
					<div class="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d7196.501869367702!2d85.17505313913084!3d25.596576585750984!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1sJanki%20Market%2C%20Bhagwat%20Nagar%2C%20Kumhrar%2C%20Patna%2C%20800026%2C%20Bihar%2C%20India!5e0!3m2!1sen!2sin!4v1719809815015!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

				
						
					</div>	
				</div><!-- END COL  -->					
			</div><!-- END ROW -->
		</div><!-- END CONTAINER -->
	</section>
	<!-- END CONTACT -->
