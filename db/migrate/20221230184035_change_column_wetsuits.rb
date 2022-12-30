class ChangeColumnWetsuits < ActiveRecord::Migration[6.1]
  def change
    change_table :wetsuits do |t|
      t.rename :type, :category
    end
  end
end
