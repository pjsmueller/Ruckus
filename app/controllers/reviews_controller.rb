class ReviewsController < ApplicationController

def index
  @movie = Movie.find_by(params[:movie_id])
  @reviews = Review.all
end

def new
  @movie = Movie.find_by(api_id: params[:movie_id])
  if !@movie
   @movie = Movie.create({api_id: params[:movie_id]})
  end

  @review = Review.new
end

def create
  @movie = Movie.find(params[:movie_id])
  @review = Review.new(reviews_params)
  if @review.save
    @movie = Movie.get_by_id(@movie.api_id.to_s)
    redirect_to "/movies/#{@movie.id}"
  else
    render 'new'
  end

end

def show
  @movie = Movie.get_by_id(params[:movie_id])
  @review = Review.find(params[:id])
end

def edit
  @movie = Movie.find_by(api_id: params[:movie_id])
  @review = Review.find(params[:id])
end

def update
  @review = Review.find(params[:id])
  @movie = Movie.find_by(api_id: params[:movie_id])
  if @review.update(reviews_params)
    @movie = Movie.get_by_id(@movie.api_id.to_s)
    redirect_to "/movies/#{@movie.id}"
  else
    render 'edit'
  end
end

def destroy
  @movie = Movie.find_by(api_id: params[:movie_id])
  @review = Review.find(params[:id])
  @review.destroy

  redirect_to "/movies/#{@movie.api_id}"
end

private
def reviews_params
  params.require(:review).permit(:title, :body, :movie_id, :user_id)
end

end
