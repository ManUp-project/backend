class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.belongs_to :product_category
      t.string :image_address_front
      t.string :image_address_back
      t.string :image_address_insideout_front
      t.string :image_address_insideout_back
      t.text :brief_description
      t.text :description
      t.float :price
      t.integer :stock
      t.belongs_to :customer_type
    end
  end
end
