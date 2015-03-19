class Company < ActiveRecord::Base
  has_many :customers
  has_many :users
  mount_uploader :image, PictureUploader
end
