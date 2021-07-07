class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :subtotal, :tax, :total
end
