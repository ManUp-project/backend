class CreateCart < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :total
    end
  end
end
