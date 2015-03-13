class RemoveCustomerCountFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :customer_count, :integer
  end
end
