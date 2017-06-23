require 'dotenv/load'
class Actor < ApplicationRecord
  Tmdb::Api.key(ENV['API_KEY'])
  has_many :ratings, as: :rateable, dependent: :destroy

  # after_initialize :get_movie_details

  def initialize(actor_id)
    super
    @api_id ||= actor_id
  end

  def self.get_by_id(actor_id)
      actor_details = Tmdb::Person.detail(actor_id)
      actor_details["movies"] = Tmdb::Person.movie_credits(actor_id).cast
      actor_details
  end

  def self.most_popular
    Tmdb::Person.popular.results
  end
end
