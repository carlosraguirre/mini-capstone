class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :total, :image_url, :description, :is_discounted?, :inventory_count, :supplier_id, :supplier
end
