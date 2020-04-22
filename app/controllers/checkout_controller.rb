# frozen_string_literal: true
class CheckoutController < ApplicationController
  def create
    @cart = Product.find(session[:cart])
    @user = current_user
    items = []

    @cart.each do |cart_item|
      price_cents = (cart_item.price * 100)

      item = {
          name: cart_item.name,
          description: cart_item.description,
          amount: price_cents.to_i,
          currency: 'cad',
          quantity: 1
      }

      items << item
    end

    @session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: items,
        success_url: checkout_success_url,
        cancel_url: checkout_cancel_url
    )

    @order = Order.create(user_id: current_user.id,
                          order_tax: @provinces.first.tax,
                          order_total: 0,
                          payment_id: @session.id,
                          paid: true)
    @order.save


    respond_to do |format|
      format.js
    end
  end
end