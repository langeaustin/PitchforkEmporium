class ApplicationController < ActionController::Base
  before_action :load_categories
  before_action :initialize_session
  private
  def load_categories
    @cats = Category.all
    @cart = Product.find(session[:cart])
  end

  def initialize_session
    session[:cart] ||= []
  end
end
