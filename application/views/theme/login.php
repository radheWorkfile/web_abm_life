<div class="container p-5">
    <div class="row">
        <div class="col-lg-6  col-sm-12 col-xs-12" style="border-right:5px solid #262958">
            <div class="woocommerce-notices-wrapper"></div>
            <h4 class="font-weight-bold mb-4">REGISTERED CUSTOMERS</h4>
            <p>If you have an account, sign in with your ID and Password.</p>

            <form class="woocommerce-form woocommerce-form-login login" method="post">

                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="username">ID / Username&nbsp;<span class="required">*</span></label>
                    <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="username" id="username" autocomplete="username" value="">
                </p>

                <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                    <label for="password">Password&nbsp;<span class="required">*</span></label>
                    <input class="woocommerce-Input woocommerce-Input--text input-text form-control" type="password" name="password" id="password" autocomplete="current-password">
                </p>
              <br>
                <p class="form-row float-right">
                    <button type="submit" class="woocommerce-button  btn btn-primary button woocommerce-form-login__submit" name="login" value="Log in">Log in</button>
                </p>

            </form>
        </div>

        <div class="col-lg-6  col-sm-12 col-xs-12 text-center">
            <div class="woocommerce-notices-wrapper"></div>
            <h4 style="text-align:center; padding-top:50px; color:#297ee8;">NEW CUSTOMERS</h4><br>
            <p style="text-align:justify;"><strong><?php echo config_item('company_name') ?>?</strong> Create an account and be a part of our company, enjoy benefits and promotions</p><br>

            <a href="<?php echo base_url() . 'Site/register' ?>" class="btn btn-lg btn-primary" style=" font-size:15px;">Create An Account </a>
        </div>
    </div>
</div>