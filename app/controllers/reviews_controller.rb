class ReviewsController < ApplicationController

def index
  @movie = Movie.find_by(params[:movie_id])
  @reviews = Review.all
end

def new
  # @movie = Movie.get_by_id(params[:movie_id])
  @movie = Movie.find_by(api_id: params[:movie_id])
  if !@movie
   @movie = Movie.create({api_id: params[:movie_id]})
  end
  p @movie
  p "@" * 20
  @review = Review.new
end

def create
  @movie = Movie.find(params[:movie_id])
  @review = Review.new(reviews_params)
  p params
  p "@" * 20
  p @review
  if @review.save
    p "@review" * 20
    redirect_to "movies/#{@movie.id}/reviews/#{@review.id}"
  else
    render 'new'
  end

end

def show
  @review = Review.find(params[:id])
end

def edit
  @review = Review.find(params[:id])
end

def update
  @review = Review.find(params[:id])

  if @review.update(reviews_params)
    redirect_to @review
  else
    render 'edit'
  end
end

def destroy
  @review = Review.find(params[:id])
  @review.destroy

  redirect_to reviews_path
end

private
def reviews_params
  params.require(:review).permit(:title, :body, :movie_id, :user_id)
end

end
