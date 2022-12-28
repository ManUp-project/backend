class CreateWetsuit < ActiveRecord::Migration[6.1]
  def change
    create_table :wetsuits do |t|
      t.boolean :is_wetsuit
      t.integer :type
    end
  end
end
