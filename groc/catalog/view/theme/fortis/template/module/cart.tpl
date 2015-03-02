<div id="cart">
  <div class="heading">
  <div class="background"></div>
  <div class="mini_header_cart">
  <?php if ($products || $vouchers) { ?>
 <a href="<?php echo $cart; ?>" id="cart-total"><?php echo $text_items; ?></a>
 <a class="separator mobile_hide"></a>
 <a class="checkout mobile_hide" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
 <?php } else { ?>
 <a class="cart_empty"><?php echo $fortis_text_cart_empty; ?></a>
 <?php } ?>
    </div>
    </div>
    <div class="contentwrapper tablet_hide">
  <div class="content active">
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><?php echo $product['quantity']; ?>&nbsp;x&nbsp;<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
            </div></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><a class="removebutton" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > * ' );"></a></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td colspan="3" class="voucher"><span class="name" style="display:block; float:left">1&nbsp;x&nbsp;<?php echo $voucher['description']; ?></span></td>
          <td class="remove"><a class="removebutton" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');"></a></td>
          </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="right"><?php echo $total['title']; ?>:</td>
          <td class="right sums"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkoutbuttons">
    <a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
    <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
    </div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>
</div>