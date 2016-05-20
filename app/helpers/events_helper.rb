module EventsHelper
	def format_time(time)
		time.strftime("%H:%M%p")
	end

	def format_date(date)
		date.strftime("%a, %d %b %Y")
	end
end
