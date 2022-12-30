class AddColumnProductsCustomerType < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :customer_type_id, :integer
  end
end
