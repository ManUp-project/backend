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

  get "/sports/:sport" do
    products = Product.where(sport: params[:sport])
    products.to_json
  end

  get "/customer_type/:customer_type" do
    products = Product.where(customer_type: params[:customer_type])
    products.to_json
  end

  get "/wetsuit/:type" do
    products = Product.wetsuits.where(type: params[:type])
    products.to_json
  end

  get "/cart" do
    cart = Cart.all
    cart.to_json
  end

  post "/cart" do
    cart = Cart.create(
      total: Cart.cart_total,
    )
    cart.to_json
  end

  patch "/cart" do
    cart = Cart.products.find(params[:id])
    cart.update(
      total: Cart.cart_total,
    )
    cart.to_json
  end

  delete "/cart" do
    cart = Cart.all
    cart.destroy
    cart.to_json
  end

  delete "/cart" do
    product = Cart.products.find(params[:id])
    product.destroy
    product.to_json
  end

  get "/products/:id/reviews" do
    reviews = product.reviews.select(product_id: params[:id])
    reviews.to_json
  end

  post "/products/:id/reviews" do
    review = Review.create(
      rating: params[:rating],
    )
  end

  patch "/products/:id/reviews" do
    review = Review.find(params[:id])
    review.update(
      rating: params[:rating],
    )
    review.to_json
  end

  delete "/products/:id/reviews" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end
end
