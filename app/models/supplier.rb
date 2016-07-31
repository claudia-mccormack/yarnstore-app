class Supplier < ActiveRecord::Base
  has_many :yarns

  # def products
  #  Yarn.where(supplier_id: id)
  # end
end
