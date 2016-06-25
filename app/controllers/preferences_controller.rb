class PreferencesController < ApplicationController

  def index

  end

  def create
    # debugger
    session[:audience_id] = params[:audience]
    session[:category_ids] = params[:category_ids]
    # audience = params[:audience]
    # category_ids = params[:category_ids]
    redirect_to dashboard_path
  end

  def dashboard
    # @locations = Location.all
    @locations = @Clocations = []
    # @events = Event.all
    @events = @Cevents = []
    # @indoor_activities = IndoorActivity.all
    @indoor_activities = []

    audience_id = session[:audience_id]
    category_ids = session[:category_ids]
    if audience_id
      @locations = Audience.find(audience_id).locations
      @events = Audience.find(audience_id).events
      @indoor_activities = Audience.find(audience_id).indoor_activities
    end
    if category_ids
      category_ids.each do |category|
        categories = Category.find(category)
        @Clocations = Location.where(category: categories)
        @Cevents = Event.where(category: categories)
      end
      # @locations= @Clocations - @locations
      # @events = @Cevents - @events
    end
    @locations = @locations.length > @Clocations.length ? @locations - @Clocations : @Clocations - @locations

    if @locations.empty?
      redirect_to root_path
      flash[:notice] = "Your preferences doen't have any area of interest. Try something here"
    end
    # todo @prakash filter by categories
    # if category_ids
    #   categories = Category.find(category_ids)
    #   # temp_locations
    #   categories.each do|category|
    #     temp_locations = category.locations - @locations
    #     # if temp_locations > 0
    #     #   aggr_locations = temp_locations
    #     # end
    #   end
    # end
    # # debugger
  end
end
