class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
      @order = Order.new(user_params)
      if @order.save
          render 'new'
      else
          render 'new'
      end
  end

  private
  
  def user_params
      params.require(:order).permit(:user_name, :product_name, :product_amt)
  end

end

