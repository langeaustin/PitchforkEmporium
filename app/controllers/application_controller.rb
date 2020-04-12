class ApplicationController < ActionController::Base
  before_action :load_categories
  private
  def load_categories
    @cats = Category.all
    @cart = Product.find(session[:cart])
  end
end
