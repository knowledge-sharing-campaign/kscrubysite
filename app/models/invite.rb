class Invite < ActiveRecord::Base
  belongs_to :attended_event, :class_name => "Event"
	belongs_to :guest, :class_name => "User"

	validates :guest_id, presence: true
	validates :attended_event_id, presence: true
end
