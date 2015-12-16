class CollaborationController < ApplicationController
	
	def collaboration
	  @questions = Question.where(proyecto_id: params[:id])
	  @proyecto = Proyecto.find(params[:id]).id
	  @users = User.all
	end

	def answers_question
	  @answers = Question.find(params[:id]).answers
	  @question = Question.find(params[:id])
	  render 'collaboration/answers'
	end

	def download_file
	  @question = Question.find(params[:id])
	  send_file(@question.attachment.path,
	        # :type => 'application/pdf',
	        # :disposition => 'attachment',
	        # :url_based_filename => true)
	        :disposition => 'attachment',
	        :url_based_filename => false)
  end
end