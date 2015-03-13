class ChangeOrdersTable < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.rename :order_number, :number
      t.rename :order_quantity, :quantity
      t.rename :order_item, :item
      t.remove :order_customer
    end
  end
end
