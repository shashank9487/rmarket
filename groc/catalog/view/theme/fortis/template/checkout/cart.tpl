<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?>
    <?php if ($weight) { ?>
    &nbsp;(<?php echo $weight; ?>)
    <?php } ?>
  </h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div class="cart-info-wrapper">
    <div class="cart-info">
      <table>
        <thead>
          <tr>
            <td class="image">&nbsp;</td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="model mobile_hide"><?php echo $column_model; ?></td>
            <td class="price mobile_hide"><?php echo $column_price; ?></td>
            <td class="quantity"><?php echo $column_quantity; ?></td>
            <td class="total mobile_hide"><?php echo $column_total; ?></td>
            <td class="remove mobile_hide"></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="image"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?>
              </td>
            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
              <?php if (!$product['stock']) { ?>
              <span class="stock">***</span>
              <?php } ?>
              <div>
                <?php foreach ($product['option'] as $option) { ?>
                <small>- <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                <?php } ?>
              </div>
              <?php if ($product['reward']) { ?>
              <small><?php echo $product['reward']; ?></small>
              <?php } ?>
              <div class="up_to_mobile">
              <small><?php echo $column_price; ?>: <?php echo $product['price']; ?></small>
              <small><?php echo $column_total; ?>: <?php echo $product['total']; ?></small>
              <small><a class="remove_link" href="<?php echo $product['remove']; ?>" title="<?php echo $button_remove; ?>">[<?php echo $button_remove; ?>]</a></small>
              </div>
              </td>
            <td class="model mobile_hide"><?php echo $product['model']; ?></td>
            <td class="price mobile_hide"><?php echo $product['price']; ?></td>
            <td class="quantity">
            <input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
             <input type="submit" class="update" alt="<?php echo $button_update; ?>" title="<?php echo $button_update; ?>" />
             </td>
            <td class="total mobile_hide"><?php echo $product['total']; ?></td>
            <td class="remove mobile_hide"><a href="<?php echo $product['remove']; ?>" class="removebutton" title="<?php echo $button_remove; ?>"></a></td>
          </tr>
          <?php } ?>
          <?php foreach ($vouchers as $vouchers) { ?>
          <tr>
            <td class="image"></td>
            <td class="name"><a><?php echo $vouchers['description']; ?></a>
            <small><a class="remove_link up_to_mobile" href="<?php echo $vouchers['remove']; ?>" title="<?php echo $button_remove; ?>">[<?php echo $button_remove; ?>]</a></small>
            </td>
            <td class="model mobile_hide"></td>
            <td class="price mobile_hide"><?php echo $vouchers['amount']; ?></td>
            <td class="quantity"><input type="text" name="" value="1" size="1" disabled="disabled" /></td>
            <td class="total mobile_hide"><?php echo $vouchers['amount']; ?></td>
             <td class="remove mobile_hide">
             <a href="<?php echo $vouchers['remove']; ?>" class="removebutton" title="<?php echo $button_remove; ?>"></a>
             </td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <div class="cart_bottom_line"><a class="second-hover-color" href="<?php echo $continue; ?>"><?php echo $button_shopping; ?></a></div>
    </div>
    </div>
  </form>
  <div class="cart-total">
    <table id="total">
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td class="right"><?php echo $total['title']; ?></td>
        <td class="right amounts"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </table>
    <div class="clearfix"></div>
    <a href="<?php echo $checkout; ?>" class="button active checkout"><?php echo $button_checkout; ?></a>
  </div>
  <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
  <div class="cart_modules_wrapper"> 
   <?php if ($coupon_status) { ?>
    <div id="coupon" class="module_box">
    <span class="heading"><?php echo $text_use_coupon; ?></span>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $entry_coupon; ?></p>
        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
        <input type="hidden" name="next" value="coupon" />
        <input type="submit" value="<?php echo $button_coupon; ?>" class="button" />
      </form>
    </div>
    <?php } ?>
     <?php if ($voucher_status) { ?>
    <div id="voucher" class="module_box">
    <span class="heading"><?php echo $text_use_voucher; ?></span>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $entry_voucher; ?></p>
        <input type="text" name="voucher" value="<?php echo $voucher; ?>" />
        <input type="hidden" name="next" value="voucher" />
        <input type="submit" value="<?php echo $button_voucher; ?>" class="button" />
      </form>
    </div>
    <?php } ?>
    <?php if ($shipping_status) { ?>
    <div id="shipping" class="module_box">
    <span class="heading"><?php echo $text_shipping_estimate; ?></span>
      <p><?php echo $text_shipping_detail; ?></p>
           <b><?php echo $entry_country; ?> <span class="required">*</span></b>
        <select name="country_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($countries as $country) { ?>
              <?php if ($country['country_id'] == $country_id) { ?>
              <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
           <b><?php echo $entry_zone; ?> <span class="required">*</span></b>
         <select name="zone_id">
            </select>
           <b><?php echo $entry_postcode; ?> <span id="postcode-required" class="required">*</span></b>
          <input type="text" name="postcode" value="<?php echo $postcode; ?>" width="100" />
      <input type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button" />
    </div>
  <?php } ?>
      <?php if ($reward_status) { ?>
    <div id="reward" class="module_box">
    <span class="heading"><?php echo $text_use_reward; ?></span>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $entry_reward; ?></p>
        <input type="text" name="reward" value="<?php echo $reward; ?>" />
        <input type="hidden" name="next" value="reward" />
        <input type="submit" value="<?php echo $button_reward; ?>" class="button" />
      </form>
    </div>
    <?php } ?>
   </div>
   <?php } ?>
  <?php echo $content_bottom; ?></div>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>