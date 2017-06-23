module ApplicationHelper
  def avrage_ratings(ratings_array)
    avrage_rating = ratings_array.reduce(0) do |sum, rating|
      sum + rating.score
    end
    if ratings_array.length > 0
       avrage_rating = avrage_rating / ratings_array.length
    else
      0
    end

  end
end
