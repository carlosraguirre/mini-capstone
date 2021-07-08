class CartedProductsController < ApplicationController
  def create
    
    carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted",
      order_id: params[:order_id]
    )
    carted_product.save
    render json: carted_product
  end

  def update
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.quantity = params[:quantity] || carted_product.quantity
    carted_product.order_id = params[:order_id] || carted_product.order_id

    if carted_product.save!
      render json: carted_product
    else
      render json: {error: carted_product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def index
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    render json: carted_products
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])

    carted_product.destroy
    json_carted_product = carted_product.as_json
    json_carted_product[:message] = "you have deleted the following item"
  end
end
