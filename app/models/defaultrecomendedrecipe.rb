module Strategies
    

class DefaultRecomendedRecipe < RecomendedRecipe
            
            
            
             def req_recipes
                @recipes=Recipe.all
                @recipes.map do |recipe|
                [recipe.name, recipe.id]
                end
            end 
             
            
end