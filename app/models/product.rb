class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :inventory_count, numericality: {only_integer: true}
  validates :description, length: {in: 10..500}
  validates :description, presence: true

  belongs_to: supplier

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