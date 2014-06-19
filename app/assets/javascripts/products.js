$(document).ready(function(){
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

	$('#add-to-cart-btn').prop('disabled', true);  

	$('#product_selects_twill').on('change', 'select', function() {
    var $this = $(this),
    	$quantity = $('#product_quantity'),
      $addToCart = $('#add-to-cart-btn');
    
    if ($this.text() !== 'Select Quantity' ) {
    	$this.data('selected', true);
    } else {
    	$this.data('selected', false);
    }

    if ($quantity.data('selected') === true) {
    	$addToCart.prop('disabled', false);
    } else {
    	$addToCart.prop('disabled', true);   
    }
        
	});

	$('#product_selects_trucker').on('change', 'select', function() {
  	var $this = $(this),
    	$quantity = $('#product_quantity'),
      $color = $('#product_color'),
      $addToCart = $('#add-to-cart-btn');
  
	  if ($this.text() !== 'Select Quantity' || $this.text() !== 'Select Color') {
	  	$this.data('selected', true);
	  } else {
	  	$this.data('selected', false);
	  }

	  if ($quantity.data('selected') === true && $color.data('selected') === true) {
	  	$addToCart.prop('disabled', false);
	  } else {
	  	$addToCart.prop('disabled', true);   
	  }
        
	});

	$('#product_selects').on('change', 'select', function() {
    var $this = $(this),
      $quantity = $('#product_quantity'),
      $size = $('#product_size'),
      $color = $('#product_color'),
      $addToCart = $('#add-to-cart-btn');
    
    if ($this.text() !== 'Select Size' || $this.text() !== 'Select Quantity' || $this.text() !== 'Select Color') {
    	$this.data('selected', true);
    } else {
    	$this.data('selected', false);
    }

    if ($quantity.data('selected') === true && $size.data('selected') === true && $color.data('selected') === true) {
    	$addToCart.prop('disabled', false);
    } else {
    	$addToCart.prop('disabled', true);   
    }
        
	});


});

