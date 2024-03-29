class MealPlan < ApplicationRecord
    
    belongs_to :user
    has_many :meals, inverse_of: :meal_plan, dependent: :destroy  

    validates :start_date, presence: true
    validates :end_date, presence: true
    validates :user, presence: true
    
    accepts_nested_attributes_for :meals

    def build_meals
            user_recipe_ids = Recipe.pluck(:id)

    (start_date..end_date).each do |date|
      available_recipe_ids = user_recipe_ids - meals.map(&:recipe_id)

      meals.build(date: date, recipe_id: available_recipe_ids.sample)
        end
    end
    
    def to_s
    "#{start_date} - #{end_date}"
    end
    
    
        
        
end


