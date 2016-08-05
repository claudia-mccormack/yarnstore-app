class RemoveYarnIDandQuantityfromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :yarn_id, :integer
    remove_column :orders, :quantity, :integer
  end
end
