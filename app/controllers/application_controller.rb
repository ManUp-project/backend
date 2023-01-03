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

  get "/product_category/:product_category" do
    products = Product.where(product_category: params[:product_category])
    products.to_json
  end

  get "/customer_type/:customer_type" do
    products = Product.where(customer_type: params[:customer_type])
    products.to_json
  end

  get "/cart" do
    cart = CartDetail.all
    cart.to_json
  end

  post "/cart" do
    cart = CartDetail.create(
      product: params[:product],
      cart_detail: params[:cart_detail]
    )
    cart.to_json
  end

  patch "/cart" do
    cart = CartDetail.products.find(params[:id])
    cart.update(
      product: params[:product],
      cart_detail: params[:cart_detail]
    )
    cart.to_json
  end

  delete "/cart" do
    cart = CartDetail.all
    cart.destroy
    cart.to_json
  end

  delete "/cart" do
    product = CartDetail.products.find(params[:id])
    product.destroy
    product.to_json
  end

  get "/products/:id/reviews" do
    reviews = product.reviews.select(product_id: params[:id])
    reviews.to_json
  end

  post "/products/:id/reviews" do
    review = Review.create(
      review: params[:review],
    )
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
