class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :product
      t.belongs_to :user
      t.integer :review
    end
  end
end
