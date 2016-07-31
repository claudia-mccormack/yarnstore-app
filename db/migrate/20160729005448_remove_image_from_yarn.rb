class RemoveImageFromYarn < ActiveRecord::Migration
  def change
    remove_column :yarns, :image, :string
  end
end
