class ProductsController < ApplicationController

  def index
    product = Product.all
    render json: product.as_json
  end

  def show
    the_id = params[:id]
    product = Product.find_by(id: the_id)
    render json: product.as_json
  end

  def create
    
end
