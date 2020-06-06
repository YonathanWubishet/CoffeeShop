class CreateOtherItems < ActiveRecord::Migration[6.0]
  def change
    create_table :other_items do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
