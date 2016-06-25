class StaticPagesController < ApplicationController
  def home_page
    ids = Location.pluck(:id).shuffle[0..2]
    @recommendations = Location.where(id: ids)
  end
end

