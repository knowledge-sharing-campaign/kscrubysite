class User < ActiveRecord::Base


  attr_accessor :tos
  validates :tos, presence: true, acceptance: true


  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  NAME_REGEX = /\A\[A-Z][a-z][A-Za-z]/
  USERNAME_REGEX= /\A[a-z0-9-]\z/
  CITY_REGEX = /\A\[A-Z][a-z][A-Za-z]/

  validates :first_name, presence: true#, format: { with: NAME_REGEX, message: "can have only characters"}

  validates :last_name, presence: true#, format: { with: NAME_REGEX, message: "can have only characters"}

  validates :email, presence: true, format: { with: EMAIL_REGEX, message: "please enter a valid email"}

  validates_uniqueness_of :email

  validates_uniqueness_of :username, presence: true, uniqueness: true

  validates :password, presence: true, confirmation: true

  validates :contact_number, presence: true, format: { with: /\d{10}/, message: "should have only 10 digits" }

  validates :gender, presence: true

  #validates_presence_of :date_of_birth

  validates :current_address, presence: true #, format: { with: CITY_REGEX, message: "should alphabets only"}

  validates :permanent_address, presence: true#, format: { with: CITY_REGEX, message: "should alphabets only"}

  validates :country, presence: true

  validates :city, presence: true #, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :course, presence: true#, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :university, presence: true#, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :source, :presence => { :message => " - Please tick how did you get to know about KSC" }

  #validates :dob, presence: {type: :date, format: 'dd-mm-yyyy'}
end
