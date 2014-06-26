$(function(){
  if ($('.top-bottom-padding').length == 0) {
    $('.checkout, .cart-table-header, .total_cell').hide();
  } 
  
	$('#products-welcome').backstretch("http://californialove.s3.amazonaws.com/rainbow2.jpg");
	setTimeout(function(){
		($('#products-welcome').backstretch([
			"https://s3.amazonaws.com/californialove/oceanviewlight.jpg",
			"https://s3.amazonaws.com/californialove/darkforest.jpg",
			"https://s3.amazonaws.com/californialove/goldsunset.jpg",
			"https://s3.amazonaws.com/californialove/mendo.jpg",
			"http://californialove.s3.amazonaws.com/rainbow2.jpg"
			], {duraction: 6000, fade: 2000}));
	}, 6500);
	$('.welcome-item-1, .product-item-1').backstretch("https://s3.amazonaws.com/californialove/Girls_BlackFront.jpg");
	$('.welcome-item-0, .product-item-0').backstretch("https://s3.amazonaws.com/californialove/mens_black_front.jpg");
	$('.welcome-item-2, .product-item-2').backstretch("https://s3.amazonaws.com/californialove/twill_hat.jpg");
	$('.welcome-item-3, .product-item-3').backstretch("https://s3.amazonaws.com/californialove/trucker_hat.jpg");

  $addToCart = $('#add-to-cart-btn');
	$addToCart.prop('disabled', true);  

  $('#product_selects_twill').change(function() {
    if (!$('#product_quantity').val()) {
      $addToCart.prop('disabled', true);
    } else {
      $addToCart.prop('disabled', false);
    } 
  });

  $('#product_selects_trucker').change(function() {
    if (!$('#product_quantity').val() || !$('#product_color').val()) {
      $addToCart.prop('disabled', true);
    } else {
      $addToCart.prop('disabled', false);
    }
  });

  $('#product_selects').change(function() {
    if (!$('#product_quantity').val() || !$('#product_color').val() || !$('#product_size').val()) {
      $addToCart.prop('disabled', true);
    } else {
      $addToCart.prop('disabled', false);
    }
  });

});



