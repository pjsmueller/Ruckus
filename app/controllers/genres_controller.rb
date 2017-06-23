class GenresController < ApplicationController
  def index
    @genres = Movie.genres
  end

  def show
    @genre = Movie.get_genre(params[:id].to_i)
    @movies = Movie.get_by_genre(params[:id].to_i)
  end
end
