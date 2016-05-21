class UsersController < ApplicationController

  before_action :authorize_user, only: :dashboard
  has_scope :past
	has_scope :upcoming

  def index
    @events = Event.all
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    # if verify_recaptcha(model: @user) && @user.save
      login @user.id
      redirect_to dashboard_path(@user)
    else
      render :new
    end
  end

  def dashboard
  end

  def my_events
    if params[:request] || request.fullpath == '/user_events'
			@events = current_user.events.order("date DESC").paginate(page: params[:page],:per_page => 5)
		else
			@events = apply_scopes(current_user.attended_events).paginate(page: params[:page],:per_page => 5)
		end
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
