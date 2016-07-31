class AddSupplierToProducts < ActiveRecord::Migration
  def change
    add_column :yarns, :supplier_id, :integer
  end
end
