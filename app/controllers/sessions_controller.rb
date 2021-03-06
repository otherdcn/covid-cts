class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create, :destroy]

  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged in!"
    else
      redirect_to login_path, alert: "Email or password is invalid"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out!"
  end
end
