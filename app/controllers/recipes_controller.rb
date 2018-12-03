class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]



  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
    @comments = @recipe.comments.all
    @comment = @recipe.comments.build
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new

  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
#   def index
#   if params[:ingredient]
#     @recipes = Recipe.joins(:ingredinet).where(Name: params[:Name].downcase)
#   else
#     @Recipe = Recipe.all
#   end
# end

  
def index
  @recipes = Recipe.all
  if params[:search]
    @recipes = Recipe.search(params[:search].split(",")).order("created_at DESC")
  else
    @recipes = Recipe.all.order("created_at DESC")
  end
end

  private
    
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:Name, :Description, :course_id, :cuisine_id,:direction_id, :image,:remote_image_url, ingredient_ids: [] )
    end
end
