class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
