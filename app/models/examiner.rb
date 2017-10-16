class Examiner < ApplicationRecord
	has_many   :examiner_photos
	accepts_nested_attributes_for :examiner_photos, :allow_destroy => true
end
