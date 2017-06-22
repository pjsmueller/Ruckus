class Movie < ApplicationRecord
  has_many :ratings, as: :rateable
  has_many :reviews
end
