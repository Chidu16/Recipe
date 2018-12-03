class Recipe < ApplicationRecord
	
	
has_many :ing_linkers, dependent: :delete_all
  has_many :ingredients, through: :ing_linkers, dependent: :delete_all

  has_many :directions, dependent: :destroy 
  
  has_many :comments, dependent: :destroy 
  
  has_many :likes, dependent: :destroy 
  
  has_many :meals, dependent: :destroy 
  
  mount_uploader :image, ImageUploader
  
  belongs_to :course
  belongs_to :cuisine
  
   belongs_to :user
  
  
  #def self.search(search)
  #where("Name LIKE ?", "%#{search}%") 
  #end
  
   def self.search(*args)
  Recipe.joins(:ingredients).where("ingredients.Name LIKE ?", "%#{search}%")
 end 
  
<<<<<<< HEAD
=======

  def to_s
    
  self.Name
>>>>>>> 775ecb9939dcf84e1d0c52279c46cadf32fbe1fd
  
 
	
  
  def to_s
    self.Name
  end

  
  

  
end
