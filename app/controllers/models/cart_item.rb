class CartItem < ActiveRecord::Base
    belongs_to :product
    belongs_to :cart_detail

end