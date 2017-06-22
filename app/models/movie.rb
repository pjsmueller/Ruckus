class Movie < ApplicationRecord
  has_many :ratings, as: :rateable, dependent: :destroy
  has_many :reviews, dependent: :destroy

  after_initiailize :get_movie_details

  def initialize(movie_id)
    self.api_id ||= movie_id
  end

  def self.genres
    genres = TMBDAdapter.get_genres
  end

  def self.find_by_genre(genre_id)
    convert_collection(TMBDAdapter.movies_by_genre(genre_id))
  end

  def self.now_playing
    convert_collection(TMBDAdapter.now_playing)
  end

private
  def :get_movie_details
    movie_details = TMDBAdapter.get_movie_details(self.api_id)
    if !movie_details
      self.destroy
    else
      self.set_attr(movie_details)
    end
  end

  def set_attr(movie_details)
    @title = movie_details.fetch('title', nil)
    @release_date = movie_details.fetch('release_date', nil)
    @genres = movie_details.fetch('genres',[])
    @genre_ids = movie_details.fetch('genres', @genres.map { |genre| genre['id'] } )
    @revenue = movie_details.fetch('revenue', nil)
    @budget = movie_details.fetch('budget', nil)
    @overview = movie_details.fetch('overview', nil)
    @directors = movie_details.fetch('directors', [])
    @cast = movie_details.fetch('cast', [])
  end

  def covert_collection(movies)
    movies.map { |movie| Movie.new(movie["id"]) }
  end

end
