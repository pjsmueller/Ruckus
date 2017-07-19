module UserActivityHelper
  def current_user
    @user ||= User.find_by_id(session[:id]) if session[:id]
  end

  def logout
    session[:id] = nil
  end

  def logged_in?
    session[:id] ? true : false
  end
end
