class ActorsController < ApplicationController
  skip_before_action :set_location
  before_action :set_actor_location


  def index
    @actors = Actor.most_popular
    if params[:search]
      @actors = Actor.search(params[:search])
    else
      @actors = Actor.most_popular
    end
  end

  def show
    begin
      @actor = Actor.get_by_id(params[:id])
    rescue
      redirect_to '/actors'
    end
  end

  private

  def set_actor_location
    session[:site_location] = 'actors'
  end


end
