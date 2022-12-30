class Cart < ActiveRecord::Base
    has_many :products

    def cart_total
        Cart.sum(:price)
    end
end