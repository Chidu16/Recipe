class Recipe < ApplicationRecord

has_many :ing_linkers, dependent: :delete_all
  has_many :ingredients, through: :ing_linkers, dependent: :delete_all

  has_many :directions, dependent: :destroy 
  
  
  def self.search(search)
  where("Name LIKE ?", "%#{search}%") 
end

end
