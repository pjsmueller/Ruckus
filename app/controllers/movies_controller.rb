
class MoviesController < ApplicationController
  def index
    @movies = Movie.now_playing
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

end
