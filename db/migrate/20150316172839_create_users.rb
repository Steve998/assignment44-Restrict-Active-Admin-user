class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :avatar
      t.boolean :admin, :default => false

      t.timestamps null: false
    end
  end
end
