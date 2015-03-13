class ChangeCompanyName < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.rename :company_name, :name
      t.rename :company_bio, :bio
    end
  end
end
