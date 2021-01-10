class Post < ApplicationRecord
  belongs_to :user
  has_many :photos
  mount_uploader :image, PhotoUploader
end
