module ApplicationHelper
  def avrage_ratings(ratings_array)
    avrage_rating = ratings_array.reduce(0) do |sum, rating|
      sum + rating.score
    end
    avrage_rating = avrage_rating / ratings_array.length
  end
end
