class OrdersController < ApplicationController

  def index
  end

  def new
    @order = Order.new
  end

  def create
    #binding.pry
    @order = Order.create params[:order].permit :first_name, :last_name, :instagram_id, :email, :address_line_1, :address_line_2, :city, :state, :zip_code
    redirect_to new_charge_path
  end

end
