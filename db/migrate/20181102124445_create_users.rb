class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :name
      t.string :string
      t.string :loyalty
      t.string :boolean

      t.timestamps
    end
  end
end
