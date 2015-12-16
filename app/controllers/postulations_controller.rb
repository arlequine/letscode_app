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

	def edit

		
	end

	def update
		@users = User.all
	  user = User.find(params[:user_id])
		@proyecto = Proyecto.find(params[:id])
		@postulations = Postulation.where(proyecto_id: @proyecto.id)
		@postulation = Postulation.where(["user_id = ? and proyecto_id = ?", user.id, @proyecto.id])
		@postulation.last.status = 'aceptado'
    respond_to do |format|
      if @postulation.last.save
         format.html { redirect_to :back, notice: 'Request was successfully updated.' }
         format.json { render :show, status: :ok, location: @postulation } 
      else
        format.html { render :edit }
        format.json { render json: @postulation.errors, status: :unprocessable_entity }
      end
    end
	end


end