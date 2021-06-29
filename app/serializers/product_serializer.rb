class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :total, :description, :is_discounted?, :supplier_id, :supplier, :images, :orders
end

# :inventory_count,