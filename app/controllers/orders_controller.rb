class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    # figure out which carted_products are in the shopping cart
    carted_products = current_user.carted_products.where(status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    carted_products.each do |cp|
      # find out how much each of them cost
      # add that all together
      calculated_subtotal += cp.product.price * cp.quantity
      # tax + total
      calculated_tax += cp.product.tax * cp.quantity
    end

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_subtotal + calculated_tax,
    )
    # save the order
    order.save
    
    # go back and update the carted_products with the order id
    carted_products.each do |cp|
      cp.update(status: "purchased", order_id: order.id)
    end

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

