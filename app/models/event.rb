class Event < ActiveRecord::Base
	 belongs_to :creator, :class_name => "User"

	  has_many :invites, :foreign_key => "attended_event_id"
	  has_many :attendees, :through => :invites

	  scope :upcoming, -> { where("date >= ?", Date.today).order('Date ASC') }
	  scope :past, -> { where("date < ?", Date.today).order('Date DESC') }
end
