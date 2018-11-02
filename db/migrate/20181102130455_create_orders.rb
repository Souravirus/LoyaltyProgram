class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :product_name
      t.string :string
      t.integer :product_amt

      t.timestamps
    end
  end
end
