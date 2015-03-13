class ChangeCustomerTable < ActiveRecord::Migration
  def change
    change_table :customers do |t|
      t.rename :customer_name, :name
      t.rename :customer_order, :order
      t.remove :customer_company
    end
  end
end
