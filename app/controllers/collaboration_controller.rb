class CollaborationController < ApplicationController
	
	def collaboration
		@questions = Question.all
	end
end