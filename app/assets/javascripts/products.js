$(function(){

  $('#product_selects_male #product_color').val('Black');
  $('#product_selects_female #product_color').val('Black');
  $('#product_selects_trucker #product_color').val('White');

  if ($('.top-bottom-padding').length == 0) {
    $('.checkout, .cart-table-header, .total_cell, .td-total').hide();
    $('.empty-cart').html("Your cart is currently empty.");
  } 

	$('.welcome-item-1, .product-item-1').backstretch("https://s3.amazonaws.com/californialove/womens_black_front.jpg");
	$('.welcome-item-0, .product-item-0').backstretch("https://s3.amazonaws.com/californialove/mens_black_front.jpg");
	$('.welcome-item-2, .product-item-2').backstretch("https://s3.amazonaws.com/californialove/twill_hat.jpg");
	$('.welcome-item-3, .product-item-3').backstretch("https://s3.amazonaws.com/californialove/trucker_hat.jpg");
  
  $('#product_selects_trucker #product_color').change(function(){
    if ($('#product_color').val() == "Black") {
      $('.item-show-container-trucker-hat').attr('src','https://s3.amazonaws.com/californialove/trucker_hat_black.jpg');
    } else {
       $('.item-show-container-trucker-hat').attr('src','https://s3.amazonaws.com/californialove/trucker_hat.jpg');
    }
  });

  $('#product_selects_male #product_color').change(function(){
    if ($('#product_color').val() == "White") {
      $('.item-show-container-male-shirt').attr('src','https://s3.amazonaws.com/californialove/mens_white_front.jpg');
    } else {
       $('.item-show-container-male-shirt').attr('src','https://s3.amazonaws.com/californialove/mens_black_front.jpg');
    }
  });

  $('#product_selects_female #product_color').change(function(){
    if ($('#product_color').val() == "White") {
      $('.item-show-container-female-shirt').attr('src','https://s3.amazonaws.com/californialove/womens_white_front.jpg');
    } else {
       $('.item-show-container-female-shirt').attr('src','https://s3.amazonaws.com/californialove/womens_black_front.jpg');
    }
  });

});



