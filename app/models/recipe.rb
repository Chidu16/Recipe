class Recipe < ApplicationRecord

has_many :ing_linkers
  has_many :ingredients, through: :ing_linkers

  has_many :directions
end
