class ChangeColumnCustomersCustomerType < ActiveRecord::Migration[6.1]
  def change
    change_table :customer_types do |t|
      t.rename :name, :customer_type
    end
  end
end
