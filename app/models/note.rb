class Note < ApplicationRecord
  has_and_belongs_to_many :labels
  mount_uploader :image, ImageUploader

  enum deleted: {show:0 ,bin:1, deleted:2}

  def self.notes_empty
    Note.where(title: " ").where(description: " ").where(date: nil).where(time: nil)
  end

  def self.search(search)
    if search 
      Note.where("title ilike ?", "%#{search}%")
      # debugger

    end
    
  end
  
end
