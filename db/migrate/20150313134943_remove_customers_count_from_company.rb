class RemoveCustomersCountFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :customers_count, :integer
  end
end
