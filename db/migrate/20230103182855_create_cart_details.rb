class CreateCartDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_details do |t|
      t.belongs_to :user
      t.float :total
    end
  end
end
