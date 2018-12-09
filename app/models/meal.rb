class Meal < ApplicationRecord
  belongs_to :meal_plan, inverse_of: :meals
  belongs_to :recipe

  validates :date, presence: true
  validates :meal_plan, presence: true
  validates :recipe, presence: true
  
  def to_s
  "#{start_date} - #{end_date}"
  end

  # def recipe_options
  #           @recipe=Recipe.all
  #           @recipe.map do |recipe|
  #           [recipe.name, recipe.id]
  #           end
  #   end
end
