require 'dotenv/load'
class TMDBAdapter
 #base url  https://api.themoviedb.org/3/
  Tmdb::Api.key(ENV['TMBD_KEY'])
  Tmdb::Api.language("en")

  def self.get_movie_details(api_id)
      movie_details = Tmdb::Movie.detail(api_id)
      movie_details["directors"] = Tmdb::Movie.directors(api_id)
      movie_details["cast"] = Tmdb::Movie.cast(api_id)
      movie_details
  end

  def self.movies_by_genre(genre_id)
    Tmdb::Genre.movies(genre_id)
  end

  def self.get_genres
    Tmdb::Genre.movie_list.map { |genre| genre["name"] }
  end

  def self.now_playing
    Tmdb::Movie.top_rated
  end
end
