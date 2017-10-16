class BoardPhoto < ApplicationRecord
	belongs_to :board
	
  	
	mount_uploader :path, ::BoardPhotoUploader
end
