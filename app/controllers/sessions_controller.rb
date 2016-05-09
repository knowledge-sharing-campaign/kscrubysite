class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where('username = :e OR email = :e', e: params[:username]).first
    if user && user.password == params[:password]
      login(user.id)
      redirect_to user_path(user)
    else
      redirect_to root_path, alert: "Invalid username or password"
    end
  end

  def destroy
    logout
    #@user = nil
    redirect_to root_path, alert: "You Successfully signed out"
  end
end
