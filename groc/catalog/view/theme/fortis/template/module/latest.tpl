<div class="box product_wrapper">
  <div class="box-heading"><?php echo $heading_title; ?></div> 
  <div class="box-content">
   <?php if($this->config->get('fortis_latest_carousel') == 'enabled'){ ?>
    <a id="latest_prev" class="slide_arrow_prev"></a>
    <a id="latest_next" class="slide_arrow_next"></a>
    <div class="box-product latest carousel">
     <?php } else { ?>
     <div class="box-product">
     <?php } ?>
      <?php foreach ($products as $product) { ?>
      <div>
      <?php if ($product['special']) { ?>
	    <?php echo '<div class="sale_tag"></div>'; ?>
	    <?php } ?>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="information_wrapper">
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/fortis/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button" />
        <div class="wishlist_compare_icons">
        <div class="wishlist_button"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $this->data['button_wishlist'] = $this->language->get('button_wishlist'); ?>"></a></div>
      	<div class="compare_button"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $this->data['button_compare'] = $this->language->get('button_compare'); ?>"></a></div>
        </div>
        </div>
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
</div>
<?php if($this->config->get('fortis_latest_carousel') == 'enabled'){ ?>
<script type="text/javascript">
	$("#column-left, #column-right").find(".box-product").removeClass("carousel");
	$("#column-left, #column-right").find('.slide_arrow_prev, .slide_arrow_next').remove();
	$('.box-product.latest.carousel').carouFredSel( {
		width:"100%",
		prev: '#latest_prev',
		next: '#latest_next',
		auto:true,
		duration:6000,
		scroll: {
			items:null,
			easing: 'easeInOutCubic',
			fx: 'scrollHorz',
			duration:1600
			},
		swipe: {
			onMouse: true,
			onTouch: true,
			duration:800
			}
}).parent().css("margin", "auto");
</script>
<?php } ?>