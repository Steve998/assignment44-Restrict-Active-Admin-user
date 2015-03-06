class AddCustomersCountToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :customers_count, :integer
  end
end
