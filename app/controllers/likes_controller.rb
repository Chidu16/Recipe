class LikesController < ApplicationController
    
    before_action :find_recipe
  def create
      
    if already_liked?
        
        flash[:notice] = "You can't like more than once"
        
    else    
    @recipe.likes.create(user_id: current_user.id)
    end
    redirect_to recipe_path(@recipe)
  end
  
  private
  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
  
  def already_liked?
      Like.where(user_id: current_user.id, recipe_id:
      params[:recipe_id]).exists?
  end
  
end
