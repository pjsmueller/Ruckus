require 'dotenv/load'
class TMDBAdapter
 #base url  https://api.themoviedb.org/3/
  Tmdb::Api.key(ENV['TMBD_KEY'])
  Tmdb::Api.language("en")

  def self.get_movie_details(api_id)
      movie_details = Tmdb::Movie.detail(api_id)
      movie_details["directors"] = Tmdb::Movie.directors(api_id)
      movie_details["api_id"] = api_id
      movie_details
  end
end
