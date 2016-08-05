class CreateCategoryYarns < ActiveRecord::Migration
  def change
    create_table :category_yarns do |t|
      t.integer :category_id
      t.integer :yarn_id

      t.timestamps null: false
    end
  end
end
