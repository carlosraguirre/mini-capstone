class Product < ApplicationRecord
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  # validates :inventory_count, numericality: {only_integer: true}
  validates :description, length: {in: 10..500}
  validates :description, presence: true

  belongs_to :supplier
  has_many :images
  has_many :order
  has_many :category_products
  has_many :categories, through: :category_products

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