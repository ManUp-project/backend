class Product < ActiveRecord::Base
    has_many :cart_details, through: :cart_items
    belongs_to :product_category
    has_many :reviews
    belongs_to :customer_type

end