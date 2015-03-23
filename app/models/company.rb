class Company < ActiveRecord::Base
  has_many :customers
  belongs_to :user
  mount_uploader :image, PictureUploader
end
