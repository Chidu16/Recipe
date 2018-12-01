class MealPlansController < ApplicationController
  before_action :set_meal_plan, only: [:show, :edit, :update, :destroy]

  # GET /meal_plans
  # GET /meal_plans.json
  def index
  @current_meal_plan = current_user.meal_plans.where("start_date <= ? AND end_date >= ?", Date.today, Date.today).first
  @meal_plans = current_user.meal_plans.order("start_date desc")
  end

  # GET /meal_plans/1
  # GET /meal_plans/1.json
  def show
    @meal_plan = current_user.meal_plans.find(params[:id])
  end

  # GET /meal_plans/new
  def new
    @meal_plan = current_user.meal_plans.build(
      start_date: params[:start_date] || Date.today,
      end_date: params[:end_date] || 6.days.from_now.to_date
    )
    @meal_plan.build_meals
    end
 

  # GET /meal_plans/1/edit
  def edit
  end

  # POST /meal_plans
  # POST /meal_plans.json
  def create
      @meal_plan = current_user.meal_plans.build(meal_plan_params)

    if @meal_plan.save
      redirect_to meal_plan_path(@meal_plan), notice: "Meal plan created!"
    else
      @errors = @meal_plan.errors.full_messages
    render :new
    end
  end
  

  # PATCH/PUT /meal_plans/1
  # PATCH/PUT /meal_plans/1.json
  def update
    respond_to do |format|
      if @meal_plan.update(meal_plan_params)
        format.html { redirect_to @meal_plan, notice: 'Meal plan was successfully updated.' }
        format.json { render :show, status: :ok, location: @meal_plan }
      else
        format.html { render :edit }
        format.json { render json: @meal_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meal_plans/1
  # DELETE /meal_plans/1.json
  def destroy
    @meal_plan = current_user.meal_plans.find(params[:id])
    @meal_plan.destroy
    redirect_to meal_plans_path, notice: "Meal plan deleted!"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_plan
      @meal_plan = MealPlan.find(params[:id])
    end

    
    def meal_plan_params
      params.require(:meal_plan).permit(
      :start_date,
      :end_date,
      meals_attributes: [
      :id,
      :date,
      :recipe_id
     ]
    )
    end
    
end
