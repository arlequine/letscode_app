class SessionsController < ApplicationController
	
  def home
  end

	def signin_form
    @user = User.new
	end

	def signin
		puts "*" * 50
		p email = params[:session][:email]
		p password = params[:session][:password]
		p params
		puts "*" * 50
		@user = User.find_by(email: email)
		if @user.authenticate(params[:session][:password])
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