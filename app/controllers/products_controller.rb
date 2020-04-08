class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.order("name").page(params[:page]).per(5)
  end

  def show
    @products = Product.find(params[:id])
  end

  def search
    @products = Product.where("name LIKE ?", "%#{params[:search_term]}%")
  end
end
