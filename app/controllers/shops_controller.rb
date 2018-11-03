class ShopsController < ApplicationController
  def new
  end
  def query
    @ans = ""
    @shop_name = params['name']  
    @user_name = params['user_name']
    @product_name = params['product_name']
  end
  def search
  end

end
