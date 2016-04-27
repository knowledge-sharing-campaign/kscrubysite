class UsersController < ApplicationController
  def create
    @users = Users.new(params[:users])
    if @users.save
      cookies[:saved_user] = true
      redirect_to :sign_up
    else
      redirect_to root_path, alert: "failed to save"
    end
  end

  #private
    #def User_params
    #  params.require(:users).permit(:first_name, :last_name, :email, :username, :password, :c_number, :gender, :dob, :curr_address, :perm_address, :country, :city, :course, :university, :source)
    #end

    def login
    end

    def processlogin
      user = Users.authenticate(params[:email], params[:password])
      if user
        user[:email] = email
        redirect_to root_path
      else
        flash[:danger] = ""
        render 'login'
      end
    end

    def current_user
      users[:email]
    end

    def destroy
      logout
      redirect_to new_users_path
    end

end
