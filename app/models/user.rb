class User < ActiveRecord::Base
  has_many :companies
  mount_uploader :avatar, PictureUploader
end
