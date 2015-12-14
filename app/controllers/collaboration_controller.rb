class CollaborationController < ApplicationController
	
	def collaboration
	  @questions = Question.where(proyecto_id: params[:id])
	  @proyecto = Proyecto.find(params[:id]).id
	end

	def answers_question
	  @answers = Question.find(params[:id]).answers
	  @question = Question.find(params[:id])
	  render 'collaboration/answers'
	end
end