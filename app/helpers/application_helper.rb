module ApplicationHelper
  # Returns the users name
	def user_name
		@user = current_user.name
	end

	def home_page?
		return true if request.path_parameters == {:controller => "static_pages", :action => "home"}
	end

	def full_title(page_title = "")
  	base_title = "Private Events"
  		if page_title.empty?
  			base_title
  		else
  			"#{page_title} | #{base_title}"
  		end
  	end
end
