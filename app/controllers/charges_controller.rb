class ChargesController < ApplicationController

  def index
  end

  def new
    @order = Order.find params[:id]
    session[:id] = @order.id
  end 

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd',
    )
    #session[:id]
    #@order = Order.find_by_id(params[:order][id:@order])
    #@order.update_attribute :payment_status, "paid"
    #update order in model
    #if successful, set session id to nil

    order = Order.find(session[:id])
      if order.confirm_payment
        reset_session
      end
    binding.pry
    redirect_to success_order_path(order)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
