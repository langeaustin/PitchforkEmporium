class OrdersController < ApplicationController

  private

  def order_params
    params.require(:order).permit(:user_id, :order_tax, :order_total, :payment_id, :paid)
  end
end
