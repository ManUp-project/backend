class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"

  get "/products" do
    products = Product.all
    products.to_json
  end

  get "/products/:id" do
    product = Product.find(params[:id])
    product.to_json
  end

  get "/product_category" do 
    product_category = ProductCategory.where("active == true")
    product_category.to_json
  end

  get "/product_category/:product_category" do
    products = Product.where(product_category: params[:product_category])
    products.to_json
  end

  get "/customer_type/:customer_type" do
    products = Product.where(customer_type: params[:customer_type])
    products.to_json
  end

  get "/cart_items" do
    cart = CartItem.all
    cart.to_json
  end

  post "/cart_items" do
    cart = CartItem.create(
      product: params[:product],
      cart_detail: params[:cart_detail]
    )
    cart.to_json
  end

  patch "/cart_items/:id" do
    cart = CartItem.find(params[:id])
    cart.update(
      quantity: params[:quantity]
    )
    cart.to_json
  end

  delete "/cart_items/:id" do
    product = CartItem.find(params[:id])
    product.destroy
    return product.to_json
  end

  get "/cart_detail/:id" do
    cart = CartItem.where(cart_detail_id: params[:id])
    cart.to_json
  end

  post "/cart_detail/:id" do
    cart = CartDetail.create(
      cart_item: params[:product],
      cart_detail: params[:cart_detail]
    )
    cart.to_json
  end

  patch "/cart-detail/:id" do
    cart = CartDetail.cart_items.find(params[:id])
    cart.update(
      cart_item: params[:cart_item],
      cart_detail: params[:cart_detail]
    )
    cart.remove_stock
    cart.to_json
  end

  delete "/cart_detail/:id" do
    cart = CartDetail.all
    cart.destroy
    cart.to_json
  end

  delete "/cart_detail/:id" do
    product = CartDetail.products.find(params[:id])
    product.destroy
    product.to_json
  end

  get "/products/:id/reviews" do
    reviews = product.reviews.select(product_id: params[:id])
    reviews.to_json
  end

  post "/products/:id/reviews" do
    product = Product.find(params[:id])
    review = product.reviews.create(params[:review])
    product_hash = product.serializable_hash
    product_hash[:average_review] = product.average_review
    {review: review, product: product_hash}.to_json
  end

  patch "/products/:id/reviews" do
    review = Review.find(params[:id])
    review.update(
      review: params[:review],
    )
    review.to_json
  end

  delete "/products/:id/reviews" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
end
