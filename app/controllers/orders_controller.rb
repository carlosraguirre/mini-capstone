class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal]
      # tax: params[:tax],
      # total: params[:total]
    )
    order.save!
    render json: order
  end

  def show
    if current_user
      order = Order.find_by(id: params[:id])
      render json: order
    else
      render json: {}
    end
  end

  def index
    if current_user
      order = Order.all
      render json: order
    else
      render json: {}
    end
  end

end
