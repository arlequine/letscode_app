class PostulationsController < ApplicationController

	def create
		proyecto_id = Proyecto.find(params[:id]).id
		@postulation = Postulation.new(user_id: current_user.id, proyecto_id: proyecto_id, status: "postulado")
	    respond_to do |format|
	      if @postulation.save
	        format.html { render :'users/show', notice: 'Request was successfully created.' }
	        format.json { render :show, status: :created, location: @postulation }
	      else
	        format.html { render :new }
	        format.json { render json: @postulation.errors, status: :unprocessable_entity }
	      end
        end
	end
end