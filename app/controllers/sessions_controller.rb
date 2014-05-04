class SessionsController < ApplicationController

  skip_before_action :authorize

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user and user.authenticate(params[:params])
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Wrong login or password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end
end
