class Users < ActiveRecord::Base
  validates :first_name, :last_name, :email, :username, :password, :c_number, :gender, :dob, :curr_address, :perm_address, :country, :city, :course, :university, :source, presence: true
end
