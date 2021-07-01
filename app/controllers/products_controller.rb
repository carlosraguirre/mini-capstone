class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:show, :index]

  def index
    if params[:category]  == "outdoors"
      category = Category.find_by(name: params[:category])
      products = category.products
    else
      products = Product.all
    end
    render json: products
  end

    
    products = Product.all
    render json: products.as_json
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
      description: params[:description],
      supplier_id: params[:supplier_id]
    )

    if product.save
      render json: product
    else
      render json: {error: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.description = params[:description] || product.description

    if product.save
      render json: product
    else
      render json: {error: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    the_id = params[:id]
    product = Product.find_by(id: the_id)

    product.destroy
    json_product = product.as_json
    json_product[:message] = "you have deleted the following item"
  end

end
