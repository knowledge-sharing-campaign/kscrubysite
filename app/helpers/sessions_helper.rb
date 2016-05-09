module SessionsHelper

  def login(id)
    session[:user_id] = id
  end

  def logout
    session.delete[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def user_signed_in?
    current_user.present?
  end

  def authorize_user
    if(!user_signed_in?)
      redirect_to new_session_path, alert: 'You need to login to access that page.'
    end
  end
end
