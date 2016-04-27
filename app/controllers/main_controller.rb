class MainController < ApplicationController
  def register
    @users = Users.new
  end
end
