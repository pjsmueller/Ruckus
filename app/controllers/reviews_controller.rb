class ReviewsController < ApplicationController

def index
  @reviews = Review.all
end

def new
  @movie = Movie.find(params[:api_id])
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  if @review.save
    redirect_to @review
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

  if @review.update(user_params)
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
