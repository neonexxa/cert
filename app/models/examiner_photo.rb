class ExaminerPhoto < ApplicationRecord
	belongs_to :examiner
	mount_uploader :path, ExaminerPhotoUploader
end
