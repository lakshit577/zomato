$(document).ready(function() {
 
  $(".increment").click(function() {
    var quantityElement = $(this).siblings(".dishQuantity");
    var quantity = parseInt(quantityElement.text());
    quantityElement.text(quantity + 1);
  });


  $(".decrement").click(function() {
    var quantityElement = $(this).siblings(".dishQuantity");
    var quantity = parseInt(quantityElement.text());
    if (quantity > 0) {
      quantityElement.text(quantity - 1);
    }
  });

  // Handle Add to Cart button click
  $(".addToCart").click(function() {
    var totalQuantity = 0;

    // Loop through each dish to check its quantity
    $(".dishQuantity").each(function() {
      var quantity = parseInt($(this).text());
      totalQuantity += quantity;
    });

    
    if (totalQuantity > 0) {
      alert("Added " + totalQuantity + " dishes to cart.");
    } else {
      alert("No dishes selected.");
    }
  });
});
