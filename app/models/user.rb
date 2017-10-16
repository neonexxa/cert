class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   	has_many   :certify_lists, :dependent => :destroy
	accepts_nested_attributes_for :certify_lists, :allow_destroy => true
	has_many   :certificates, :through => :certify_lists

	scoped_search on: [:id, :name, :email]

	

end
