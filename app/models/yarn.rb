class Yarn < ActiveRecord::Base
  def sale_message
    if price <= 10
      "Discount Item!"
    else
      "On sale!"
    end
  end

  def dollars
    number_to_currency(number)
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
