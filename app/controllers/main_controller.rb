class MainController < ApplicationController
  def register
    @user = User.new
    redirect_to root_path
  end

  before_action :authenticate_user, only: :welcome
  def welcome
  end

  def authenticate_user
    if(session[:email].blank?)
      flash[:danger] = 'You need to login'
      redirect_to new_session_path
    end
  end

end
