class ApplicationController < ActionController::Base
  helper_method :current_user
  before_action :set_location

  private

  private

  def set_location
    session[:site_location] = 'movies'
  end

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end
end
