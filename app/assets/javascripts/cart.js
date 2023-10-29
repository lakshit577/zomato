document.addEventListener("DOMContentLoaded", function() {
    const addToCartButtons = document.querySelectorAll(".addToCart");
  
    addToCartButtons.forEach(button => {
      button.addEventListener("click", function() {
        const dishName = this.getAttribute("data-dish-name");
        const dishPrice = parseFloat(this.getAttribute("data-dish-price"));
        const dishQuantity = parseInt(this.parentElement.querySelector(".dishQuantity").textContent);
        
        // Send an AJAX request to your CartItemsController to create a new cart item
        fetch('/cart_items', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'X-CSRF-Token': Rails.csrfToken() // Use Rails' CSRF token
          },
          body: JSON.stringify({
            cart_item: {
              dish_name: dishName,
              quantity: dishQuantity,
              price: dishPrice
            }
          })
        })
        .then(response => response.json())
        .then(data => {
          // Handle the response, e.g., show a success message
          console.log(data);
        })
        .catch(error => {
          console.error('Error:', error);
        });
      });
    });
  });
