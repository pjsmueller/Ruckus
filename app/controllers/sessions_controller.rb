class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(login_params[:username], login_params[:password])
    if user
      session[:id] = user.id
      redirect_to root_url
    else
      @errors = ["Invalid username or password"]
      render "new"
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end

  private

  def login_params
    params.require(:login).permit(:username, :password)
  end
end
