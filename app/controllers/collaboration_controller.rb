class CollaborationController < ApplicationController
	
	def collaboration
		@questions = Question.all
	end

	def answers_question
		@answers = Question.find(params[:id]).answers
	  @question = Question.find(params[:id])
	  render 'collaboration/answers'
	end
end