class RecipeInit

    attr_accessor :recomendedrecipe
    
    def initialize recomendedrecipe
        @recomendedrecipe=recomendedrecipe
    end 
    
    def get_recipes
     
         recomendedrecipe.req_recipes
    
    end
    
end