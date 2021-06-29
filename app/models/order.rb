class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  def tax
    return subtotal * 0.09
  end

  def total
    tax + subtotal
  end

end
