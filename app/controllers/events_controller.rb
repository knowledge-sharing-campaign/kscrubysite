class EventsController < ApplicationController
  before_action :authorize_user, only: [:new, :create, :edit, :update, :destroy]

	has_scope :upcoming
	has_scope :past

  def index
		if request.fullpath.include?('upcoming=true') || request.fullpath.include?('past=true')
			@events = apply_scopes(Event).all.paginate(page: params[:page], :per_page => 5)
		else
			@events = Event.order("date DESC").paginate(page: params[:page], :per_page => 5)
		end
	end

  def show
    @event = Event.find(params[:id])
		@guests = @event.guests
  end

  def new
  	#@event = current_user.events.build
    @event = Event.new
    authorize! :create, @event
  end

  def create
		@event = current_user.events.new(event_params)
    authorize! :create, @event
		if @event.save
			flash[:notice] = "Event Created"
			redirect_to @event
		else
			render 'new'
		end
	end

  def edit
		@event = Event.find(params[:id])
    authorize! :edit, @event
	end

  def update
		@event = Event.find(params[:id])
    authorize! :edit, @event
		if @event.update_attributes(event_params)
			flash[:notice] = "Event updated"
			redirect_to @event
		else
			render 'edit'
		end
	end

  def destroy
		@event = Event.find(params[:id])
    authorize! :destroy, @event
    @event.destroy
		flash[:notice] = "Event Deleted"
    	redirect_to events_path
	end

  private

	  def event_params
		params.require(:event).permit(:title, :description, :location, :date, :start_time)
	  end

end
