class ProductsController < ApplicationController
  def show_one_product
    render json: {message: "hello"}
  end
end
