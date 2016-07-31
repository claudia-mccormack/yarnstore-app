class Yarn < ActiveRecord::Base
has_many :images
belongs_to :supplier

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
