class Ingredient < ApplicationRecord

 has_many :ing_linkers
  has_many :recipes, through: :ing_linkers
end
