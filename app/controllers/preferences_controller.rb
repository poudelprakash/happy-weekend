class PreferencesController < ApplicationController

  def index

  end

  def create
    # debugger
    session[:audience_id] = params[:audience_id]
    session[:category_ids] = params[:category_ids]
    # audience = params[:audience]
    # category_ids = params[:category_ids]
    redirect_to root_path
  end
end
