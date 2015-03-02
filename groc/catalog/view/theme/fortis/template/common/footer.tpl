</div> <!-- #container ends -->
<div class="footer_wrapper">
<div id="footer" class="
<?php if($this->config->get('fortis_use_custom') == 'enabled'){ ?>
<?php echo $this->config->get('fortis_footer_content_background')?> 
<?php } ?>
">
<div class="social_wrapper">
<?php if($this->config->get('fortis_footer_facebook') == 'enabled'){ ?>
<a onclick="window.open('<?php echo $this->config->get('fortis_footer_facebook_link')?>');" class="facebook"></a>
<?php } ?>
<?php if($this->config->get('fortis_footer_twitter') == 'enabled'){ ?>
<a onclick="window.open('<?php echo $this->config->get('fortis_footer_twitter_link')?>');" class="twitter"></a>
<?php } ?>
<?php if($this->config->get('fortis_footer_youtube') == 'enabled'){ ?>
<a onclick="window.open('<?php echo $this->config->get('fortis_footer_youtube_link')?>');" class="youtube"></a>
<?php } ?>
<?php if($this->config->get('fortis_footer_googleplus') == 'enabled'){ ?>
<a onclick="window.open('<?php echo $this->config->get('fortis_footer_googleplus_link')?>');" class="googleplus"></a>
<?php } ?>
<?php if($this->config->get('fortis_footer_pinterest') == 'enabled'){ ?>
<a onclick="window.open('<?php echo $this->config->get('fortis_footer_pinterest_link')?>');" class="pinterest"></a>
<?php } ?>
<div class="clearfix"></div>
</div>
<div class="main_content lighten">
<div class="left">
<?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_account; ?></h3>
    <ul>
      <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
      <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
    </ul>
  </div>
</div>
	<div class="right">
	<h3><?php echo $fortis_text_company_info; ?></h3>
    <?php if($this->config->get('fortis_show_footer_telephone') == 'enabled'){ ?>
     <span class="telephone"><?php echo $telephone; ?></span>
      <?php } ?>
    <i><?php echo $store; ?><br />
    <?php echo $address; ?></i>
</div>
</div>
  <div class="bottom_line"> 
  <div id="powered"><?php echo $powered; ?></div>
  <?php if($this->config->get('fortis_footer_payment_icon')){ ?>
   <div id="footer_payment_icon"><img src="image/<?php echo $this->config->get('fortis_footer_payment_icon')?>" alt="" /></div>
   <?php } ?>
  </div>
  </div>  <!-- #footer ends -->
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
</div>  <!-- .footer_wrapper ends -->
</body></html>