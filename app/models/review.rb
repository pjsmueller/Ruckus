class Review < ApplicationRecord
  has_many :comments
  has_many :reviews, as: :rateable

  belongs_to :movie
  belongs_to :user_id
end
