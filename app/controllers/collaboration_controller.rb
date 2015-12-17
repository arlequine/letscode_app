class CollaborationController < ApplicationController
	
	def collaboration
	  @questions = Question.where(proyecto_id: params[:id]).paginate(page: params[:page], per_page: 3)
	  @proyecto = Proyecto.find(params[:id])
	  @users = User.all
	end

	def answers_question
		@user = User.find(params[:user_id])
	  @answers = Question.find(params[:id]).answers
	  @question = Question.find(params[:id])
	  @proyecto = Proyecto.find(params[:proyecto_id])
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