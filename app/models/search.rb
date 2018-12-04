class Search < ApplicationRecord
    
      def recipes
        @recipes ||= find_recipes
      end

private

    def find_recipes
      recipes = Recipe.order(:Name)
      recipes = recipes.where( "Name like ?","%#{keywords}%") if keywords.present?
      recipes = recipes.joins(:ingredients).where(ingrdient: { ingredient_id: ingredient_id}) if ingredient_id.present?
      recipes = recipes.where(course_id: course_id) if course_id.present?
      recipes = recipes.where(cuisine_id: cuisine_id) if cuisine_id.present?
      recipes
    end
    
end
