class StaticPagesController < ApplicationController
  def home_page
    audience_id = session[:audience_id]
    category_ids = session[:category_ids]
    if audience_id
      @locations = Audience.find(audience_id).locations
      @events = Audience.find(audience_id).events
      @indoor_activities = Audience.find(audience_id).indoor_activities
    else
      @locations = Location.all
      @events = Event.all
      @indoor_activities = IndoorActivity.all
    end

    # todo @prakash filter by categories
    # if category_ids
    #   categories = Category.find(category_ids)
    #   temp_locations
    #   categories.each |category|
    #       temp_locations = category.locations - @locations
    #       if temp_locations > 0
    #         aggr_locations = temp_locations
    #       end
    #   end
    # end
    # debugger
  end
end

