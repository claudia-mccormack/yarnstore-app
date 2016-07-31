class DescriptionPriceStock < ActiveRecord::Migration
  def change
    add_column :yarns, :description, :text
    change_column :yarns, :price, :decimal, precision: 5, scale: 2
    add_column :yarns, :in_stock, :boolean, default: true
  end
end
