class Product < ActiveRecord::Base
    belongs_to :cart
    belongs_to :customer
    belongs_to :sport
    belongs_to :wetsuit

end