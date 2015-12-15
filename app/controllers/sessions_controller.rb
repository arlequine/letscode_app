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
            render 'sign_in_form'
		end
	end

	def logout
		session.clear
		render 'sessions/home'
	end

	def project

		puts "****"
		puts @user.user_type
		if @user.user_type == "empresa"
			#@emproyectos = Proyecto.where(empresa_id: @user.id)
			#p @emproyectos
			#@user_type = "Empresario"
			render '/users/show'
		else
			#@proyectos = Proyecto.all
			#@user_type = "Practicante"
			render '/users/show'
		end

		# @proyecto = Proyecto.new
		# @questions = Question.all
		# render 'collaboration/collaboration'

	end

end