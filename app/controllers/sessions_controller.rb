class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login params[:email]
      redirect_to '/welcome'
    else
      flash[:danger] = 'your have not filed your details'
      render :register
    end
  end

  def destroy
    redirect_to root_path
  end
end
