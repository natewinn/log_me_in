class UserMailer < ActionMailer::Base
	default from: 'tiyappmailer@gmail.com'

	def welcome_email(user)
		@user = user
		@url = "http://localhost.com:3000/users/login"
		mail(to: user.email, subject: 'Welcome to My Awesome Site')
	end
end