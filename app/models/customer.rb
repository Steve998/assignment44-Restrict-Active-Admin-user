class Customer < ActiveRecord::Base

belongs_to :companies
has_many :orders
end
