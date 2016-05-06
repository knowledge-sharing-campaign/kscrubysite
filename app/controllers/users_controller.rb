class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if verify_recaptcha(model: @user) && @user.save
        login params[:username]
        redirect_to user_path(@user)
      else
        flash[:danger] = 'You have not filled your details.'
        render :new
      end
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :username,
      :password,
      :password_confirmation,
      :contact_number,
      :gender,
      :dob,
      :curr_address,
      :perm_address,
      :country,
      :city,
      :course,
      :university,
      :source
    )
end
