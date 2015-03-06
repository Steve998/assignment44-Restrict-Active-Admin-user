class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :company_name
      t.string :company_customer
      t.text :company_bio

      t.timestamps null: false
    end
  end
end
