class Proyecto < ActiveRecord::Base
	has_many :proskills
	has_many :postulations
	has_many :questions
	has_many :answers, through: :questions
	belongs_to :user

end
