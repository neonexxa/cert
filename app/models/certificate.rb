class Certificate < ApplicationRecord
has_many 	:certify_lists
accepts_nested_attributes_for :certify_lists, :allow_destroy => true
has_many   :users, :through => :certify_lists
belongs_to	:category
belongs_to	:qualification
end
