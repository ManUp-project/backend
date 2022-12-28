class CreateSport < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.string :name
    end
  end
end
