class Product < ApplicationRecord

  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
    return price * 0.09
  end

  def total
    tax + price
  end
end
