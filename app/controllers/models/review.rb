class Review < ActiveRecord::Base
  has_many :products
  has_many :customers

  def review_average
    Review.average(:rating).round(2)
  end
end
