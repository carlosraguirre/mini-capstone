class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :total, :description, :is_discounted?, :inventory_count, :supplier_id, :supplier, :images, :orders
end
