class CustomersController < InheritedResources::Base
  before_action :provinces_load
  private

  def customer_params
    params.require(:customer).permit(:full_name, :province, :address, :order_id)

  end

  def provinces_load
  @provinces = Province.all

  end


  def new
    @current.user = current_user
    
  end
end
