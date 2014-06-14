$(document).ready(function(){
	$('#products-welcome').backstretch("http://californialove.s3.amazonaws.com/rainbow2.jpg");
	setTimeout(function(){
		($('#products-welcome').backstretch([
			"https://s3.amazonaws.com/californialove/oceanviewlight.jpg",
			"https://s3.amazonaws.com/californialove/darkforest.jpg",
			"https://s3.amazonaws.com/californialove/goldsunset.jpg",
			"https://s3.amazonaws.com/californialove/mendo.jpg",
			"http://californialove.s3.amazonaws.com/rainbow2.jpg"
			], {duraction: 4000, fade: 2000}));
	}, 6500);
	$('.welcome-item-1, .product-item-1').backstretch("https://s3.amazonaws.com/californialove/Girls_BlackFront.jpg");
	$('.welcome-item-0, .product-item-0').backstretch("https://s3.amazonaws.com/californialove/mens_black_front.jpg");
	$('.welcome-item-2, .product-item-2').backstretch("https://s3.amazonaws.com/californialove/twill_hat.jpg");
	$('.welcome-item-3, .product-item-3').backstretch("https://s3.amazonaws.com/californialove/trucker_hat.jpg");
});