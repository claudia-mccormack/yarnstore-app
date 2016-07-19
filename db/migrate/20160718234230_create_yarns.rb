class CreateYarns < ActiveRecord::Migration
  def change
    create_table :yarns do |t|
      t.string :name
      t.string :fiber
      t.integer :price
      t.string :color
      t.string :image

      t.timestamps null: false
    end
  end
end
