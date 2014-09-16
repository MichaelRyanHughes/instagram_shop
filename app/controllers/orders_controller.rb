class OrdersController < ApplicationController

  def index
  end

  def success
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new 
    @order.instagram_id = params[:instagram_id]

    Instagram.configure do |c|
      c.access_token = INSTAGRAM_TOKEN
      c.client_id = INSTAGRAM_CLIENT_ID
    end
    
    @jason_pic = Instagram.media_item(@order.instagram_id).images.standard_resolution.url
  end

  def create
    #binding.pry
    @order = Order.create params[:order].permit :payment_status, :instagram_id, :photo_url, :first_name, :last_name, :email, :address_line_1, :address_line_2, :city, :state, :zip_code
    redirect_to new_charge_path(id: @order.id)
  end
end
