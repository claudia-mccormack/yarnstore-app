class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :yarn
  has_many :carted_yarns
  has_many :yarns, through: :carted_yarns

  # def order_subtotal
  #   yarn.price * quantity
  # end
  #
  # def order_tax
  #   order_subtotal * 0.09
  # end
  #
  # def order_total
  #   order_subtotal + tax
  # end

end
