class Question < ActiveRecord::Base
	
  belongs_to :user
  belongs_to :proyecto
  has_many :answers
  has_many :users, through: :answers

  mount_uploader :attachment, AttachmentUploader
end