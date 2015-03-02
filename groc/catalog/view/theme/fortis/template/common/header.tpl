<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/stylesheet.css" />
<?php if($this->config->get('fortis_use_responsive') == 'enabled'){ ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/responsive.css" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/menu-<?php echo $this->config->get('fortis_main_menu_type')?>.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/custom_colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/theme/fortis/js/fortis_common.js"></script>
<script type="text/javascript" src="catalog/view/theme/fortis/js/cloud-zoom.1.0.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/fortis/js/caroufredsel/jquery.carouFredSel-6.1.0-packed.js"></script>
<script type="text/javascript" src="catalog/view/theme/fortis/js/caroufredsel/jquery.touchSwipe.min.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/ie7.css" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/fortis/stylesheet/ie8.css" />
<![endif]-->
<script type="text/javascript">
  WebFontConfig = {
    google: { families: [ 'Open+Sans:600:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })(); 
</script>
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<?php if($this->config->get('fortis_use_custom') == 'enabled'){ ?>
<style>
#header_wrapper {background-color:#<?php echo $this->config->get('fortis_header_background')?>;}
#header, #header #welcome a, .currency a {color:#<?php echo $this->config->get('fortis_header_text')?>;}
.user-menu > ul > li > .background, #cart .heading .background {background:#<?php echo $this->config->get('fortis_user_menu_background')?>;}
.user-menu > ul > li > .background, #cart .heading .background {opacity:0.<?php echo $this->config->get('fortis_user_menu_background_opacity')?>;filter: alpha(opacity = <?php echo $this->config->get('fortis_user_menu_background_opacity')?>);}
.user-menu > ul > li:hover > .background {opacity:0.<?php echo $this->config->get('fortis_user_menu_background_opacity_hover')?>;filter: alpha(opacity = <?php echo $this->config->get('fortis_user_menu_background_opacity_hover')?>);}
.header_top #search input {color:#<?php echo $this->config->get('fortis_search_field_text')?> !important; background:#<?php echo $this->config->get('fortis_search_field_background')?>;}
.header_top #search input:hover {background:#<?php echo $this->config->get('fortis_search_field_background_hover')?>;}
.header_top #search input:focus {background:#<?php echo $this->config->get('fortis_search_field_background_focus')?>;}
.user-menu > ul > li > a, #cart .heading .mini_header_cart a, #cart .heading .mini_header_cart .checkout {color:#<?php echo $this->config->get('fortis_user_menu_text')?>;}
.user-menu > ul > li > a:hover, #cart .heading a {color:#<?php echo $this->config->get('fortis_user_menu_text_hover')?>;}
#menu {background-color:#<?php echo $this->config->get('fortis_menu_background')?>}
#menu > ul > li > a, #menu .mobile_menu_trigger {color:#<?php echo $this->config->get('fortis_menu_link_color')?>;}
h1, .welcome {color:#<?php echo $this->config->get('fortis_h1_color')?>;}
h2, #menu > ul > li > div > ul > li > a, #content .content.border .border_heading {color:#<?php echo $this->config->get('fortis_heading_color')?>;}
a.button:hover, a.button.active, input.button:hover, input.button.active, .product-filter .list_view_icon_active:hover, .product-filter .grid_view_icon_active:hover, .wishlist_button a, .compare_button a {background-color:#<?php echo $this->config->get('fortis_button_color')?>;}
a, a:visited, #menu > ul > li > div > ul > li.hasthird > div a:hover, #menu > ul > li.withsubs:hover > a, #menu > ul > li.current.withsubs:hover > a, #cart.active .heading .mini_header_cart a {color:#<?php echo $this->config->get('fortis_primary_color')?>}
#column-left .box.product_wrapper .box-heading, #column-right .box.product_wrapper .box-heading {background-color:#<?php echo $this->config->get('fortis_primary_color')?>}
a:hover, a:visited:hover, .box-content > ul > li ul > li >  a:hover, .box-content > ul > li ul > li > a.active, .product-info .cart .price, .box-account > ul > li > a:hover, #cart.active .heading .mini_header_cart .checkout:hover, .pagination .links a:hover, .pagination .links b {color:#<?php echo $this->config->get('fortis_secondary_color')?>}
.second-hover-color:hover, .name a:hover {color:#<?php echo $this->config->get('fortis_secondary_color')?> !important}
.box-content > ul > li ul > li >  a:hover, .box-content > ul > li ul > li > a.active, #column-left .box .box-heading, #column-right .box .box-heading, .mobile_menu .plus {background-color:#<?php echo $this->config->get('fortis_secondary_color')?>}
.footer_wrapper {background-color:#<?php echo $this->config->get('fortis_footer_background')?>}
#footer h3 {color:#<?php echo $this->config->get('fortis_footer_heading')?>;}
#footer .column a, #footer .main_content .right, #powered, #powered a {color:#<?php echo $this->config->get('fortis_footer_links')?>}
#footer .main_content .right .telephone {color:#<?php echo $this->config->get('fortis_footer_telephone')?>;}
</style>
<?php } ?>
<?php if($this->config->get('fortis_use_custom_css') == 'enabled'){ ?>
<style>
<?php echo html_entity_decode($this->config->get('fortis_custom_css_content'), ENT_QUOTES, 'UTF-8'); ?>
</style>
<?php } ?>
</head>
<body>
<div id="header_wrapper" class="<?php if($this->config->get('fortis_use_custom') == 'enabled'){ ?>
<?php echo $this->config->get('fortis_language_currency')?> 
<?php echo $this->config->get('fortis_search_field_icons')?> 
<?php echo $this->config->get('fortis_user_menu_icons')?> 
<?php echo $this->config->get('fortis_main_menu_icons')?> 
<?php echo $this->config->get('fortis_main_menu_text_shadow')?>
<?php } ?>">
<div class="header_wrapper2">
<div class="header_wrapper3">
<div id="header">
<div class="header_top">
 <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>  
  <div class="language_and_currency">
  <?php echo $language; ?>
  <?php echo $currency; ?> 
  </div>
</div>
  <?php if ($logo) { ?>
  <div class="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
  <?php } ?>
 <div class="header_right"> 
 <div id="welcome" class="mobile_hide">
  <?php if (!$logged) { ?>
    <?php echo html_entity_decode($this->config->get('fortis_promo_message_' . $this->config->get('config_language_id')), ENT_QUOTES, 'UTF-8'); ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
 <div class="user-menu">
  <ul>
  <?php if($this->config->get('fortis_use_custom_menu') == 'enabled'){ ?>
  <li class="custom"><div class="background"></div><a href="<?php echo $this->config->get('fortis_user_menu_link_url')?>"><?php echo ($this->config->get('fortis_custom_link_text_' . $this->config->get('config_language_id'))) ?></a></li>
  <?php } ?>
  <li class="account"><div class="background"></div><a href="<?php echo $account; ?>"><?php echo $fortis_text_account; ?></a></li>
  <li class="wishlist"><div class="background"></div><a href="<?php echo $wishlist; ?>"><?php echo $fortis_text_wishlist; ?></a></li>
  <?php if (!$logged) { ?>
  <li class="login tablet_hide"><div class="background"></div><a href="<?php echo $account; ?>"><?php echo $fortis_text_log_in; ?></a></li>
  <li class="signup tablet_hide"><div class="background"></div><a href="<?php echo $fortis_register; ?>"><?php echo $fortis_text_sign_up; ?></a></li>
  <?php } else { ?>
  <li class="logout tablet_hide"><div class="background"></div><a href="<?php echo $fortis_logout; ?>"><?php echo $fortis_text_log_out; ?></a></li>
  <?php } ?>
  <li class="up_to_mobile"><a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
  </ul>
  <?php echo $cart; ?>
  </div>
  </div> <!-- header_right ends -->
</div> <!-- header ends -->
<?php if ($categories) { ?>
<div id="menu">
<a class="mobile_menu_trigger up_to_tablet"><?php echo $fortis_text_mobile_menu; ?></a>
<?php if($this->config->get('fortis_show_home_icon') == 'enabled'){ ?>
<a class="home_icon only_desktop" href="<?php echo $home; ?>"></a>
<?php } ?>
   <ul class="only_desktop">
       <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_1_id'] == $category_1_id) { ?>
		<li class="current"><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
         <?php } else { ?>
         <li><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
         <?php } ?>
          <?php if ($category_1['children']) { ?>
          <div>         
          <ul>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <li class="column-<?php echo $category_1['column']; ?>">
            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
              <?php if ($category_2['children']) { ?>
              <div class="third">
              <ul>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                <?php } ?>
              </ul>
              </div>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          </div>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
</div>
<?php } ?>
</div> <!-- header_wrapper3 ends -->
</div> <!-- header_wrapper2 ends -->
</div> <!-- header_wrapper ends -->
<div class="mobile_menu_wrapper">
<div class="mobile_menu">
<?php if ($categories) { ?>
	<ul>
       <?php foreach ($categories as $category_1) { ?>
         <li><a href="<?php echo $category_1['href']; ?>" ><?php echo $category_1['name']; ?></a>
          <?php if ($category_1['children']) { ?>
          <span class="plus"></span>
          <ul>
            <?php foreach ($category_1['children'] as $category_2) { ?>
            <li>
            <a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
              <?php if ($category_2['children']) { ?>
              <span class="plus"></span>
              <ul>
                <?php foreach ($category_2['children'] as $category_3) { ?>
                <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
      </ul>
      </div>
<?php } ?>
</div>
<div class="breadcrumb_wrapper"></div>
<div id="container">
<div id="notification"></div>