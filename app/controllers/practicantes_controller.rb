class PracticantesController < ApplicationController

	def show
		@users = User.all
	  @proyecto = Proyecto.find(params[:id])
	  @postulations = Postulation.where(proyecto_id: @proyecto.id)
	end
end