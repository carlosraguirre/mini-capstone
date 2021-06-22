class ProductsController < ApplicationController

  def index
    product = Product.all
    render json: product
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    product.save
    render json: product
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    product.name = params[:name]
    product.price = params[:price]
    product.image_url = params[:image_url]
    product.description = params[:description]
    product.save
    render json: product
  end

  def destroy
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    product.destroy
    json_product = product.as_json
    json_product[:message] = "you have deleted the following item"
  end

end
