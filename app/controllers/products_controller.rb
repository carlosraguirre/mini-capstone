class ProductsController < ApplicationController
  def show_one_product
    product = Product.first
    render json: product.as_json
  end
end
