class UsersController < ApplicationController

  before_action :authorize_user, only: :dashboard

  def new
  end

  def create
    @user = User.new(user_params)
    #if @user.save
    if verify_recaptcha(model: @user) && @user.save
      login @user.id
      redirect_to dashboard_path(@user)
    else
      flash[:danger] = 'You have not filled your details.'
      render :new
    end
  end

  def dashboard
      @user = User.find(params[:id])
      @previous_events = @user.previous_events
      @upcoming_events = @user.upcoming_events
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
      :date_of_birth,
      :current_address,
      :permanent_address,
      :country,
      :city,
      :course,
      :university,
      {source: []},
      :terms_and_conditions
    )
  end
end
