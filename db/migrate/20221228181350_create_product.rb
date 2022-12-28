class CreateProduct < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image_address
      t.integer :price
      t.integer :quantity
      t.belongs_to :cart
      t.belongs_to :customer
      t.belongs_to :sport
      t.belongs_to :wetsuit
    end
  end
end
