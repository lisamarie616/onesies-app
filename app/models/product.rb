class Product < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

  mount_uploader :photo, PhotoUploader

end
