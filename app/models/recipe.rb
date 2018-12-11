

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
  

 #   def self.search(*args)
 #  Recipe.joins(:ingredients).where("ingredients.name LIKE ?", "%#{search}%")
 # end
 

  def to_s
    
  self.name

  end
  
  validates :name, presence: true
  
end
