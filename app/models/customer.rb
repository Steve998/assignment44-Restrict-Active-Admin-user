class Customer < ActiveRecord::Base

belongs_to :company, counter_cache: true
has_many :order
end
