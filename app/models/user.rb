class User < ActiveRecord::Base


  attr_accessor :tos
  validates :tos, acceptance: true


  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  NAME_REGEX = /\A[A-Za-z' ]+\z/
  USERNAME_REGEX= /\A[a-z0-9-]+\z/
  CITY_REGEX = /\A[A-Z]\z/


  validates :first_name, presence: true, format: { with: NAME_REGEX, message: "should start with capital letter and only have characters"}

  validates :last_name, presence: true, format: { with: NAME_REGEX, message: "should start with capital letter and only have characters"}

  validates :email, presence: true, format: { with: EMAIL_REGEX, message: "invalid email"}

  validates_uniqueness_of :email

  validates :username ,presence: true

  validates_uniqueness_of :username 

  validates :password, presence: true, confirmation: true

  validates :contact_number, presence: true

  validates :contact_number, format: { with: /\d{10}/, message: "should have only 10 digits" }

  validates :gender, presence: true

  validates :date_of_birth, presence: true

  validates :current_address, presence: true , format: { with: CITY_REGEX, message: "should start with capital letter and only have characters"}

  validates :permanent_address, presence: true, format: { with: CITY_REGEX, message: "should start with capital letter and only have characters"}

  validates :country, presence: true

  validates :city, presence: true , format: { with: CITY_REGEX, message: "should be alpha numeric"}

  validates :course, format: { with: CITY_REGEX, message: "should be alpha numeric"}

  validates :university, format: { with: CITY_REGEX, message: "should be alpha numeric"}

  validates :source, presence: true

  #validates :dob, presence: {type: :date, format: 'dd-mm-yyyy'}
end
