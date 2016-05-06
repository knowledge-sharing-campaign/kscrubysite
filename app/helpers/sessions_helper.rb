module SessionsHelper

  def login(id)
    session[:user_id] = id
  end

  def logout
    session.delete[:user_id]
  end

  def current_user
    session[:user_id]
  end

end
