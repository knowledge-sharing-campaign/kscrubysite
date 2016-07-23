class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where('username = :e OR email = :e', e: params[:username]).first
    if user && user.authenticate(params[:password])
      login(user.id)
      redirect_to dashboard_path
    else
      redirect_to new_session_path
      flash[:danger] = 'Invalid email or password'
    end
  end

  def destroy
    logout
    redirect_to root_path
  end
end
