class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.integer :customer_order
      t.string :customer_company

      t.timestamps null: false
    end
  end
end
