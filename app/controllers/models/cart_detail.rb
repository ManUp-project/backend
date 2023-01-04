class CartDetail < ActiveRecord::Base
    belongs_to :user
    has_many :cart_items
    has_many :products, through: :cart_items

    def sum
        total = 0
        cart_items.each do |cart_item|
            total += cart_item.product.price * cart_item.quantity
        end
        total
    end

    def remove_stock
        cart_items.each do |cart_item|
            new_stock = cart_item.product.stock - cart_item.quantity

            product = Product.find_by(id == "cart_item.product_id")

            product.update(stock: new_stock)
        end
    end

    def new_cart_detail
        
    end
end

#user.cart_details.last should be getting their current cart
# when a purchase is made:
# update quanity on each product (stock)
# create a new CartDetail for that user