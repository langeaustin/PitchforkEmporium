class ProductsController < ApplicationController
  before_action :initialize_session
  before_action :load_cart
  def index
    # @products = Product.all
    @products = Product.order("name").page(params[:page]).per(5)
    @categories = Category.all
  end

  def show
    @products = Product.find(params[:id])
  end

  def search
    if params[:category] == '5'
      @products = Product.where("name LIKE ?", "%#{params[:search_term]}%")
    else
      @products = Product.where("name LIKE ?", "%#{params[:search_term]}%").where("category_id=?",params[:category])
    end
  end

  def add_to_cart
    id = params[:id].to_i

    session[:cart] << id unless session[:cart].include?(id)
    redirect_to products_path
  end

  def remove_from_cart
    id = params[:id].to_i
    session[:cart].delete(id)
    redirect_to cart_path
  end

  def load_cart
    @cart = Product.find(session[:cart])
  end

  def initialize_session
    session[:cart] = []
  end
end
