class CertifyList < ApplicationRecord
	belongs_to 	:certificate
	belongs_to	:user
end
