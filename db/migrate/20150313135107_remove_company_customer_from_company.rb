class RemoveCompanyCustomerFromCompany < ActiveRecord::Migration
  def change
    remove_column :companies, :company_customer, :string
  end
end
