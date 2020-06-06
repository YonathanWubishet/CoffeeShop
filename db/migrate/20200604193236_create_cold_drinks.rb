class CreateColdDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :cold_drinks do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
