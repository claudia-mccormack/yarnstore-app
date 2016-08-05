class Category < ActiveRecord::Base
  has_many :category_yarns
  has_many :yarns, through: :category_yarns
end
