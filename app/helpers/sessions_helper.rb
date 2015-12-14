module SessionsHelper

	def current_user
		if session[:user_id]
			@current_user ||= User.find_by_id(session[:user_id])
		end
	end

	def logged_in?
		!current_user.nil?
	end

	def current_project(id)
		@project = Proyecto.find(id)
	end

	def all_projects
        projects = Proyecto.all
    end
end