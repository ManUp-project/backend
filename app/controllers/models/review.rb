class Review < ActiveRecord::Base
  belongs_to :product
  belongs_to :user

  def review_average
    Review.average(:rating).round(2)
  end
end
