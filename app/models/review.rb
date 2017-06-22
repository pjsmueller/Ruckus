class Review < ApplicationRecord
  has_many :comments
  has_many :ratings, as: :rateable

  belongs_to :movie
  belongs_to :user
end
