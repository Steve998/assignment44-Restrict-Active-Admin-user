class Customer < ActiveRecord::Base
belongs_to :company
has_many :orders
end
