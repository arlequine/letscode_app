class User < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true

  has_many :questions
  has_many :questions_answered, :foreign_key => :responder_id, :class_name => "Answer"
  has_many :proyectos_created, :foreign_key => :empresa_id, :class_name => "Proyecto"
  has_many :answers, through: :questions
  #has_many :proskills, through: :proyectos
  has_many :postulations
  has_many :userskills
  has_many :proyectos
end