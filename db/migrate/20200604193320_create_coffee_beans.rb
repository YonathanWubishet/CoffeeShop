class CreateCoffeeBeans < ActiveRecord::Migration[6.0]
  def change
    create_table :coffee_beans do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
