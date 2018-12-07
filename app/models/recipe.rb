

class Recipe < ApplicationRecord
	
	validates :name, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
	
has_many :ing_linkers, dependent: :delete_all
  has_many :ingredients, through: :ing_linkers, dependent: :delete_all

  has_many :directions, dependent: :destroy 
  
  has_many :comments, dependent: :destroy 
  
  has_many :likes, dependent: :destroy 
  
  has_many :meals, dependent: :destroy 
  
  has_many :recommendations
 
  mount_uploader :image, ImageUploader
  
  belongs_to :course
  belongs_to :cuisine
  
   belongs_to :user
  
  
  def self.search(search)
    where("recipes.name LIKE ?", "%#{search}%") 
  end
  
<<<<<<< HEAD
   def self.search(*args)
  Recipe.joins(:ingredients).where("ingredients.Name LIKE ?", "%#{search}%")
 end
 
  def to_s
    self.Name
=======
  

  def to_s
    
  self.Name

>>>>>>> 27a999bfb73cc5684881400ed10ac9d607c63ce9
  end
  
 
end
