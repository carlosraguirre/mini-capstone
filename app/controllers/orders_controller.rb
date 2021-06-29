class OrdersController < ApplicationController
  def create

    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price
    #call tax method from product method file
    calculated_tax = product.tax * params[:quantity].to_i
    calculated_total = calculated_subtotal + calculated_tax
    
    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
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
