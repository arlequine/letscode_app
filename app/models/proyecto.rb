class Proyecto < ActiveRecord::Base
	has_many :proskills
	has_many :postulations
	has_many :questions
	has_many :answers, through: :questions
	has_many :skills, through: :proskills
	belongs_to :user

	def status_of_project(project)
      postulation = self.postulations.where(proyecto_id:project.id)
      postulation.first.status
    end

end
