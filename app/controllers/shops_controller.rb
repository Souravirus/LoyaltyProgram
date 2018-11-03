class ShopsController < ApplicationController
  def new
  end
  def query
    @ans = ""
    loyalty = 1
    shop_name = params['name']  
    user_name = params['user_name']
    product_name = params['product_name']

    product_amt = Shop.product_count(shop_name, user_name, product_name)
    loyalty = Shop.loyalty_count(product_name, shop_name)

    if loyalty!= 0
        @ans = product_amt/loyalty
    end
  end
  def search
  end

end
