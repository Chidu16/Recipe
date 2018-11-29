class Recipe < ApplicationRecord
  

has_many :ing_linkers, dependent: :delete_all
  has_many :ingredients, through: :ing_linkers, dependent: :delete_all

  has_many :directions, dependent: :destroy 
  
  has_many :comments, dependent: :destroy 
  
  mount_uploader :image, ImageUploader
  
  belongs_to :course
  belongs_to :cuisine
  
  
  def self.search(search)
  where("Name LIKE ?", "%#{search}%") 
  end

end
