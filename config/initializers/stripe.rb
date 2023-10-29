Rails.configuration.stripe = { 
  :publishable_key => "pk_test_51Nt7AiSH9YUmBAon7pUfkMU35JCKVyW45rs65kxwPhtLqnZqbbMKqaKuIrUZNZU6p93XaMFC0380ZzLtEWN5MhvR00oqRfleFf",
  :secret_key => "sk_test_51Nt7AiSH9YUmBAonNnHxyy8O1P3ZBiBwh8bQGcUtasqUT3BA9ENUGDZHdQHt4FclVryytBhWMuERk70ql7EoZDMy00wJQ2FZjb"
} 
Stripe.api_key = Rails.configuration.stripe[:secret_key]