class Recipe < ApplicationRecord

has_many :ing_linkers
  has_many :ingredients, through: :ing_linkers

  has_many :directions
  
  def self.search(search)
  where("Name LIKE ?", "%#{search}%") 
end

end
