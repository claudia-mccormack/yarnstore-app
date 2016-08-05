class ChangeProductToYarn < ActiveRecord::Migration
  def change
    rename_column :orders, :product_id, :yarn_id
  end
end
