class ReviewsController < ApplicationController

def index
  @movie = Movie.find_by(api_id: params[:movie_id].to_i)
  @reviews = @movie.reviews
end

def new
  @movie = Movie.find_or_create_by(api_id: params[:movie_id].to_i)
  @review = Review.new
end

def create
  @movie = Movie.find_by(api_id: params[:movie_id].to_i)
  @review = Review.new(movie_id: @movie.id, user_id: session[:id], title: reviews_params[:title], body: reviews_params[:body])
  if @review.save
    redirect_to "/movies/#{@movie.api_id}"
  else
    @errors = @review.errors.full_messages
    render 'new'
  end

end

def show
  @movie = Movie.find_by(api_id: params[:movie_id].to_i)
  @review = @movie.reviews.find(params[:id])
end

def edit
  @movie = Movie.find_by(api_id: params[:movie_id])
  @review = Review.find(params[:id])
end

def update
  review = Review.find(params[:id])
  movie = Movie.find_by(api_id: params[:movie_id])
  if review.update(review_params)
    movie = Movie.get_by_id(movie.api_id.to_s)
    redirect_to "/movies/#{movie.id}"
  else
    render 'edit'
  end
end

def destroy
  movie = Movie.find_by(api_id: params[:movie_id])
  review = Review.find(params[:id])
  review.destroy
  redirect_to "/movies/#{@movie.api_id}"
end

private
def reviews_params
  params.require(:review).permit(:title, :body)
end

end
