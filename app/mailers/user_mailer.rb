class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def enroll_email(user)
		# render json: @user
		
		@url  = 'http://certificate.my/users/sign_in'
		
		mail(to: user[:email], subject: 'Enrollment to '+user[:cert] )
	end
end
