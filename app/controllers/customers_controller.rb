class CustomersController < ApplicationController
  before_action :provinces_load
  private

  def customer_params
    params.require(:customer).permit(:full_name, :province, :address, :order_id)

  end

  def provinces_load
  @provinces = Province.all

  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.user = current_user
    @customer.save
  end
end
