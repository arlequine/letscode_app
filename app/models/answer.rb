class Answer < ActiveRecord::Base
	belongs_to :question
  #has_many :questions
  #has_many :users, through: :questions
  belongs_to :responder, class_name: "User"
end