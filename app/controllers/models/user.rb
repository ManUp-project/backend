class User < ActiveRecord::Base
    has_many :cart_details
    has_many :products, through: :reviews

end