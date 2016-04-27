module SessionsHelper
  def login(email)
    session[:email] = email
  end

  def logout
    session.delete[:email]
  end

  def current_user
    session[:email]
  end
  
end
