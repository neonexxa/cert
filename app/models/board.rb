class Board < ApplicationRecord
	has_one   :board_photo
	accepts_nested_attributes_for :board_photo, :allow_destroy => true
end
