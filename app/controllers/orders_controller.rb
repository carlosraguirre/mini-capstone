class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    carted_products.each do |cp|
      subtotal += cp.product.price * cp.quantity
      calculated_tax = cp.product.tax * cp.quantity
    end

    order = Order.new(
      user_id: current_user.id
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )

    order.save
    render json: order.as_json
  end


  def show
    order = Order.find_by(id: params[:id], user_id: current_user.id)
    render json: order
  end


  def index
    orders = Order.where(user_id: current_user.id)
    render json: orders
  end
end

