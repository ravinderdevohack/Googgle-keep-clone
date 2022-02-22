class Note < ApplicationRecord
  has_and_belongs_to_many :labels
  mount_uploader :image, ImageUploader

  enum deleted: {show:0 ,bin:1, deleted:2}
  
end
