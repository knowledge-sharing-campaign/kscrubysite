class Event < ActiveRecord::Base
  belongs_to :host, class_name: 'User'
	has_many :guests, through: :invites, dependent: :destroy
	has_many :invites, :foreign_key => 'attended_event_id', dependent: :destroy



	validates :title, presence: true, length: { maximum: 40 }
	validates :description, presence: true, length: {minimum: 5}
	validates :location, presence: true, length: { minimum: 3}
	validates :date, presence: true
	validates :start_time, presence: true
	validate :date_cannot_be_in_the_past

	scope :upcoming, -> date { where("date >= ?", Date.today).order("date ASC") }
	scope :past, -> date { where("date < ?", Date.today).order("date DESC") }


	 def date_cannot_be_in_the_past
    	errors.add(:date, "can't be in the past") if
      	!date.blank? and date < Date.today
  	 end

end
