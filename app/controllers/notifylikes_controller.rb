class NotifylikesController < ApplicationController
  before_action :set_notifylike, only: [:show, :edit, :update, :destroy]

  # GET /notifylikes
  # GET /notifylikes.json
  def index
    @notifylikes = Notifylike.all
  end

  # GET /notifylikes/1
  # GET /notifylikes/1.json
  def show
  end

  # GET /notifylikes/new
  def new
    @notifylike = Notifylike.new
  end

  # GET /notifylikes/1/edit
  def edit
  end

  # POST /notifylikes
  # POST /notifylikes.json
  def create
    @notifylike = Notifylike.new(notifylike_params)

    respond_to do |format|
      if @notifylike.save
        format.html { redirect_to @notifylike, notice: 'Notifylike was successfully created.' }
        format.json { render :show, status: :created, location: @notifylike }
      else
        format.html { render :new }
        format.json { render json: @notifylike.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notifylikes/1
  # PATCH/PUT /notifylikes/1.json
  def update
    respond_to do |format|
      if @notifylike.update(notifylike_params)
        format.html { redirect_to @notifylike, notice: 'Notifylike was successfully updated.' }
        format.json { render :show, status: :ok, location: @notifylike }
      else
        format.html { render :edit }
        format.json { render json: @notifylike.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifylikes/1
  # DELETE /notifylikes/1.json
  def destroy
    @notifylike.destroy
    respond_to do |format|
      format.html { redirect_to notifylikes_url, notice: 'Notifylike was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notifylike
      @notifylike = Notifylike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notifylike_params
      params.require(:notifylike).permit(:name, :user_id, :like_id)
    end
end
