class RatingsController < ApplicationController

  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user_id = current_user.id
    if @rating.save
      if @rating.rateable_type == 'movie'
       redirect_to "movies/#{@rating.rateable_id}"
      else
       redirect_to "reviews/#{@rating.rateable_id}"
      end
    else
      render status: 404
    end
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      redirect_to @rating
    else
      render 'edit'
    end
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy

    redirect_to ratings_path
  end

  private
  def rating_params
    params.require(:rating).permit(:rateable_type, :rateable_id, :score)
  end

end
