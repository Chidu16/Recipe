

class Recipe < ApplicationRecord
	
	validates :name, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
  validates_format_of :name,:description, :with => /^[a-z]+$/i,  :multiline => true
	
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
=======
 #   def self.search(*args)
 #  Recipe.joins(:ingredients).where("ingredients.name LIKE ?", "%#{search}%")
 # end
 
 

>>>>>>> 3ab07bdde41629c7ae3bd69df6e8d99baf34ec3f
  def to_s
    
  self.name

  end
  
  validates :name, presence: true
  
end
