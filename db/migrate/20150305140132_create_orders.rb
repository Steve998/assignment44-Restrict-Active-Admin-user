class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.integer :order_quantity
      t.string :order_item
      t.string :order_customer

      t.timestamps null: false
    end
  end
end
