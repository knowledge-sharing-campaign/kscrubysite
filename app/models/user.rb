class User < ActiveRecord::Base

  has_many :events, :foreign_key => :creator_id

  has_many :invites, :foreign_key => :attendee_id
  has_many :attended_events, :through => :invites

  before_create :create_remember_token

  def upcoming_events
    self.attended_events.upcoming
  end

  def previous_events
    self.attended_events.past
  end

  def attending?(event)
    event.attendees.include?(self)
  end

  def attend!(event)
    self.invites.create!(attended_event_id: event.id)
  end

  def cancel!(event)
    self.invites.find_by(attended_event_id: event.id).destroy
  end

  


  validates :terms_and_conditions, acceptance: true

  serialize :source


  EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  NAME_REGEX = /\A[a-zA-Z ']+\z/
  USERNAME_REGEX= /\A[a-z0-9-]+\z/
  CITY_REGEX = /\A[a-zA-Z ]+\z/

  MULTILINE_WORD_REGEX=/^[a-zA-Z0-9 #-,\/]+$/

  validates :first_name, presence: true, format: { with: NAME_REGEX, message: "can have only characters"}

  validates :last_name, presence: true, format: { with: NAME_REGEX, message: "can have only characters"}

  validates :email, presence: true, format: { with: EMAIL_REGEX, message: "please enter a valid email"}

  validates_uniqueness_of :email

  validates :username, presence: true, format: { with: USERNAME_REGEX, message: "please enter a username"}

  #validates_uniqueness_of :username, presence: true, uniqueness: true

  validates :password, presence: true, confirmation: true
  # COuntry code regex: /\A\d{3}\d{10}\z/
  validates :contact_number, presence: true, format: { with: /\A\+\d{12}\z/, message: "should have only 10 digits" }

  validates :gender, presence: true

  #validates_presence_of :date_of_birth

  validates :current_address, presence: true, format: { with: MULTILINE_WORD_REGEX, message: "should alphabets only", multiline: true}

  validates :permanent_address, presence: true, format: { with: MULTILINE_WORD_REGEX, message: "should alphabets only", multiline: true}

  validates :country, presence: true

  validates :city, presence: true, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :course, presence: true, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :university, presence: true, format: { with: CITY_REGEX, message: "should be alphabets only"}

  validates :source, presence: { message: " - Please tick how did you get to know about KSC" }

  validates :date_of_birth, presence: {type: :date, format: 'dd-mm-yyyy'}
end
