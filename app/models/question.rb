class Question < ActiveRecord::Base
	
  belongs_to :user
  belongs_to :proyecto
  has_many :answers

  mount_uploader :attachment, AttachmentUploader
end