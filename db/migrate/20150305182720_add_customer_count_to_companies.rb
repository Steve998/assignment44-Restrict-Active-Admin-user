class AddCustomerCountToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :customer_count, :integer
  end
end
