class InvitesController < ApplicationController
  before_action :authenticate_user!

  def create
  	@event = Event.find(params[:invite][:attended_event_id])
  	current_user.invites.create(attended_event_id: @event.id)
  	redirect_to(:back)
  end

  def destroy
  	@invite = Invite.find(params[:id])
  	current_user.invites.destroy(@invite)
  	redirect_to(:back)
  end
end
