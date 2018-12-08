# module Strategies

class CourseRecommendedRecipe < RecomendedRecipe
    
         def initialize(course_id, cuisine_id)
                @course_id = course_id
                @cuisine_id = cuisine_id
         end
            
            def applicable?
              @course_id != nil? && @cuisine_id = nil?
            end

            def scoped_collection
              if @course_id != nil? && @cuisine_id = nil?
                    @recipe = Recipe.where(course_id: @course_id)
                    @recipe.map do |recipe|
                    [recipe.name, recipe.id]
                    end
              else
                super
              end
            end

            def execute
              Strategies::DefaultRecomendedRecipe
                .new(user, scoped_collection)
                .execute
     end       end

    
