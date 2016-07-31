class ChangeProductIdName < ActiveRecord::Migration
  def change
    rename_column :images, :product_id, :yarn_id
  end
end
