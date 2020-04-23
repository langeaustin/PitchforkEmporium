class CustomersController < ApplicationController
  before_action :provinces_load

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
    if @customer.save
      redirect_to checkout_test_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:full_name, :province, :address)
  end

  def provinces_load
    @provinces = Province.all
  end
end
