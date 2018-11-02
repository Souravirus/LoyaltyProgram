class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :name
      t.integer :product_amt

      t.timestamps
    end
  end
end
