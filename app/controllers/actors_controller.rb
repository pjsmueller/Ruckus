class ActorsController < ApplicationController

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
end
