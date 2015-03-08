class Company < ActiveRecord::Base
  has_many :customers
  mount_uploader :image, PictureUploader
end
