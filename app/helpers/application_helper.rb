module ApplicationHelper
  def average_ratings(ratings_array)
    average_rating = ratings_array.reduce(0) do |sum, rating|
      sum + rating.score
    end
    average_rating = average_rating / ratings_array.length
  end
end
