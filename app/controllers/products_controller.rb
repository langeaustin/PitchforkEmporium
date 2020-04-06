class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.order("name").page(params[:page]).per(5)
  end

  def show
    @products = Product.find(params[:id])
  end
end
