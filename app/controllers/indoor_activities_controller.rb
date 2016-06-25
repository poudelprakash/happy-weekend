class IndoorActivitiesController < ApplicationController
  before_action :set_indoor_activity, only: [:show, :edit, :update, :destroy]

  # GET /indoor_activities
  # GET /indoor_activities.json
  def index
    @indoor_activities = IndoorActivity.where(category_id:2)
  end

  # GET /indoor_activities/1
  # GET /indoor_activities/1.json
  def show
  end

  # GET /indoor_activities/new
  def new
    @indoor_activity = IndoorActivity.new
  end

  # GET /indoor_activities/1/edit
  def edit
  end

  # POST /indoor_activities
  # POST /indoor_activities.json
  def create
    @indoor_activity = IndoorActivity.new(indoor_activity_params)

    respond_to do |format|
      if @indoor_activity.save
        format.html { redirect_to @indoor_activity, notice: 'Indoor activity was successfully created.' }
        format.json { render :show, status: :created, location: @indoor_activity }
      else
        format.html { render :new }
        format.json { render json: @indoor_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indoor_activities/1
  # PATCH/PUT /indoor_activities/1.json
  def update
    respond_to do |format|
      if @indoor_activity.update(indoor_activity_params)
        format.html { redirect_to @indoor_activity, notice: 'Indoor activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @indoor_activity }
      else
        format.html { render :edit }
        format.json { render json: @indoor_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indoor_activities/1
  # DELETE /indoor_activities/1.json
  def destroy
    @indoor_activity.destroy
    respond_to do |format|
      format.html { redirect_to indoor_activities_url, notice: 'Indoor activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indoor_activity
      @indoor_activity = IndoorActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indoor_activity_params
      params.require(:indoor_activity).permit(:name, :description, :release_date)
    end
end
