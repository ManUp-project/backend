class Product < ActiveRecord::Base
    has_many :cart_details, through: :cart_items
    belongs_to :product_category
    has_many :reviews
    belongs_to :customer_type

    def product_average
        self.reviews.average("review").to_f.round(2)
    end

end