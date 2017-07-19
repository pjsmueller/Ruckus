class Comment < ApplicationRecord
  has_many :ratings, as: :rateable

  belongs_to :user
  belongs_to :review
end
