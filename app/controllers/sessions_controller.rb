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
		
		if @user.user_type == "Empresario"
			@emproyectos = Proyecto.where(user_id: @user.id)
			render "inicios/_form1"
		else
			@proyectos = Proyecto.all
			render "inicios/_form2"
		end
	end

end