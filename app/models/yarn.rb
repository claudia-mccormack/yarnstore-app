class Yarn < ActiveRecord::Base
has_many :images
belongs_to :supplier
has_many :orders
has_many :category_yarns
has_many :categories, through: :category_yarns
has_many :carted_yarns
has_many :orders, through: :carted_yarns

  def sale_message
    if price <= 10
      "Discount Item!"
    else
      "Premium Wool"
    end
  end

  def tax
    (price * 0.09).round(2)
  end

  def total
    price + tax
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end
end
