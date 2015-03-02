<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
  <span id="tab"><h3>Popular Items</h3></span>
  <p></p>
  <?php foreach ($products as $product) { ?>
    <div class="col-lg-3 col-md-3 col-sm-3">
      <div class="product-thumb transition ">
        <div class="image">
          <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
        </div>
        <div class="layer">
          <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        
        <?php if ($product['price']) { ?>
        <p class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </p>
        <?php } ?>
        </div>
      </div>

    </div>
  <?php } ?>
</div>
