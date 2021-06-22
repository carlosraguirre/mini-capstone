class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :tax, :total, :image_url, :description, :is_discounted?
end
