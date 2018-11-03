class Shop < ApplicationRecord
    def self.product_count(shop_name, user_name, product_name)
        orders = Order.where(user_name: user_name, 
                             product_name: product_name,
                             name: shop_name
                            )
        orders.sum(:product_amt)
        
    end

    def self.loyalty_count(product_name, shop_name)
        loyalty_amt = Product.select(:product_amt)
                             .where(product_name: product_name,
                                    name: shop_name)
        loyalty_amt.sum(:product_amt)
    end
end
