class SessionsController < ApplicationController
	
  def home
  end

	def signin_form
    @user = User.new
	end

	def signin
		email = params[:session][:email]
		password = params[:session][:password]
		@user = User.find_by(email: email)
		@user.authenticate(password)
		if @user
			session[:user_id] = @user.id
      project
		else
      render 'signin_form'
		end
	end

	def logout
		session.clear
		render 'sessions/home'
	end

	def project
		@proyecto = Proyecto.new
		render 'proyectos/new'
	end

end