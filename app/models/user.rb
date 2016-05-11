class User < ActiveRecord::Base


  attr_accessor :tos
  validates :tos, acceptance: true


  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :first_name, presence: true

  validates :last_name, presence: true

  validates_uniqueness_of :email, presence: true, uniqueness: true, :format => EMAIL_REGEX

  validates_uniqueness_of :username, presence: true, uniqueness: true

  validates :password, presence: true, confirmation: true

  validates :contact_number, format: { with: /\d{10}/, message: "is in bad format" }

  #validates :dob, presence: {type: :date, format: 'dd-mm-yyyy'}
end