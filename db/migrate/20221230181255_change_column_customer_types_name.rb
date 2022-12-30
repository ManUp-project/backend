class ChangeColumnCustomerTypesName < ActiveRecord::Migration[6.1]
  def change
    change_table :customers do |t|
      t.rename :customer_type, :name
    end
  end
end
