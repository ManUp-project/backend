class CartDetail < ActiveRecord::Base
    belongs_to :user
    has_many :products, through: :cart_items

end