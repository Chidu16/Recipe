class Recipe < ApplicationRecord

has_many :ing_linkers, dependent: :delete_all
  has_many :ingredients, through: :ing_linkers, dependent: :delete_all

  has_many :directions
  
  
  def self.search(search)
  where("Name LIKE ?", "%#{search}%") 
end

end
