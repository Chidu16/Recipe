class DirectionsController < ApplicationController
  before_action :set_direction, only: [:show, :edit, :update, :destroy]

  # GET /directions
  # GET /directions.json
  def index
    @recipe = Recipe.find(params[:recipe_id])
    @directions = @recipe.directions

  end

  # GET /directions/1
  # GET /directions/1.json
  def show
    @recipe = Recipe.find(params[:recipe_id])
    @direction = @recipe.directions.find(params[:id])

  end

  # GET /directions/new
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @direction = @recipe.directions.build
  end

  # GET /directions/1/edit
  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @direction = @recipe.directions.find(params[:id])
  end

  # POST /directions
  # POST /directions.json
  def create

    @recipe = Recipe.find(params[:recipe_id])
    @direction = @recipe.directions.build(params.require(:direction).permit(:Steps))
    #@direction = Direction.new(direction_params)

    respond_to do |format|
      if @direction.save
        format.html { redirect_to recipe_directions_path(@recipe,@direction), notice: 'Direction was successfully created.' }
        format.json { render :show, status: :created, location: recipe_directions_path }
      else
        format.html { render :new }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directions/1
  # PATCH/PUT /directions/1.json
  def update

    @recipe = Recipe.find(params[:recipe_id])
    @direction = Direction.find(params[:id])

    respond_to do |format|
      if @direction.update(direction_params)
        format.html { redirect_to recipe_directions_path(@recipe,@direction), notice: 'Direction was successfully updated.' }
        format.json { render :show, status: :ok, location: recipe_directions_path }
      else
        format.html { render :edit }
        format.json { render json: @direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directions/1
  # DELETE /directions/1.json
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @direction = Direction.find(params[:id])
    @direction.destroy
    respond_to do |format|
      format.html { redirect_to recipe_directions_path(@recipe), notice: 'Direction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_direction
      @direction = Direction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def direction_params
      params.require(:direction).permit(:Steps)
    end
end
