class CartDetail < ActiveRecord::Base
    belongs_to :user
    has_many :products, through: :cart_items

    def cart_total
        Cart.sum(:price)
    end

end