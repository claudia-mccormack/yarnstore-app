class CreateCartedYarns < ActiveRecord::Migration
  def change
    create_table :carted_yarns do |t|
      t.integer :user_id
      t.integer :yarn_id
      t.string :status
      t.integer :order_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
