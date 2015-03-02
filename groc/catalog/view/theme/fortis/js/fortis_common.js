$(window).bind('resize', function(){

// Hide mobile menu etc on window resize
 if ($(window).width() > 960) {
       $('.mobile_menu_wrapper, #cart .contentwrapper, .top_header_drop_down').hide();
  }
});

$(document).ready(function() {
	
// Move breadcrumb to header //
			$('.breadcrumb').appendTo($('.breadcrumb_wrapper'));
			$('.breadcrumb_wrapper').has('.breadcrumb').addClass('has_breadcrumb');
	
// Currency and language drop down //
			$('.currency_current').bind('mouseover', function() {
				$('#currency').delay(200).fadeIn(800);
			});
			
			$('#currency,.currency_current').bind('mouseleave', function() {
				$('#currency').stop(true,true).delay(200).fadeOut(800);
			});
			
			$('.language_current').bind('mouseover', function() {
				$('#language').delay(200).fadeIn(800);
			});
			
			$('#language, .language_current').bind('mouseleave', function() {
				$('#language').stop(true,true).delay(200).fadeOut(800);
			});

// Cart drop down effect //
			$('#cart > .heading a').die('click'); //remove original effect
			$('#cart').die('mouseleave'); //remove original effect
	
			$('#cart > .heading a').live('mouseover', function() {
			$('#cart .contentwrapper').stop(true,true).slideDown(600, "easeOutBounce");
			$('#cart').addClass('active');
			});		

			$('#cart').live('mouseleave', function() {
			$('#header #cart .contentwrapper').stop(true, true).fadeOut(500, function(){
			$('#cart').removeClass('active');
			});
			});

// Pick out main categories with subs  //
			$("#menu >ul >li").has("li").addClass("withsubs");
			$("#menu >ul >li >div >ul >li").has("li").addClass("hasthird");

// Mobile main navigation  //
		
			$('.mobile_menu_trigger').click(function() {
  			$('.mobile_menu_wrapper').slideToggle(500, "easeInCubic")
        	});           

            $('.mobile_menu li').bind().click(function(e) {
			$(this).toggleClass("open").find('>ul').stop(true, true).slideToggle(500)
            .end().siblings().find('>ul').slideUp().parent().removeClass("open");
            e.stopPropagation();
			});
			
			$('.mobile_menu li a').click(function(e) {
            e.stopPropagation();
            });

// Slideshow and carousel arrows  //
			$(".slide_arrow_prev, .slide_arrow_next").hide();
			$(".product_wrapper, .r_slideshow-wrapper").hover(function() {
			$(this).find(".slide_arrow_prev, .slide_arrow_next").stop(true, true).fadeIn(200)
			});

			$(".product_wrapper, .r_slideshow-wrapper").mouseleave(function() {
			$(this).find(".slide_arrow_prev, .slide_arrow_next").stop(true, true).fadeOut(200)
			});

	
	/* Search 155 */
	$('.button-search').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var search = $('input[name=\'search\']').attr('value');
		
		if (search) {
			url += '&search=' + encodeURIComponent(search);
		}
		
		location = url;
	});
	
	$('#header input[name=\'search\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var search = $('input[name=\'search\']').attr('value');
			
			if (search) {
				url += '&search=' + encodeURIComponent(search);
			}
			
			location = url;
		}
	});
	
	/* Ajax Cart */
	$('#cart > .heading a').live('click', function() {
		$('#cart').addClass('active');
		
		$('#cart').load('index.php?route=module/cart #cart > *');
		
		$('#cart').live('mouseleave', function() {
			$(this).removeClass('active');
		});
	});
	

	// IE6 & IE7 Fixes
	if ($.browser.msie) {
		if ($.browser.version <= 6) {
			$('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');
			
			$('#column-right + #content').css('margin-right', '195px');
		
			$('.box-category ul li a.active + ul').css('display', 'block');	
		}
		
		if ($.browser.version <= 7) {
			$('#menu > ul > li').bind('mouseover', function() {
				$(this).addClass('active');
			});
				
			$('#menu > ul > li').bind('mouseout', function() {
				$(this).removeClass('active');
			});	
		}
	}
	
	$('.success img, .warning img, .attention img, .information img').live('click', function() {
		$(this).parent().fadeOut('slow', function() {
			$(this).remove();
		});
	});	
});

// 155 function
function getURLVar(key) {
	var value = [];
	
	var query = String(document.location).split('?');
	
	if (query[1]) {
		var part = query[1].split('&');

		for (i = 0; i < part.length; i++) {
			var data = part[i].split('=');
			
			if (data[0] && data[1]) {
				value[data[0]] = data[1];
			}
		}
		
		if (value[key]) {
			return value[key];
		} else {
			return '';
		}
	}
} 

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
				
				$('#cart').load('index.php?route=module/cart #cart > *'); //Added
				
			}	
		}
	});
}
function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#wishlist-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#compare-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				
			}	
		}
	});
}