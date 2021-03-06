class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @orders = current_user.orders.includes(:product)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
    if Order.find(params[:id]).destroy
           redirect_to orders_path
    end
  end
end
