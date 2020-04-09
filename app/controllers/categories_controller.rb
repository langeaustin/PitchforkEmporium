class CategoriesController < ApplicationController
  def show
    @products = Product.find(params[:id])
    @categories = Category.all
  end
end