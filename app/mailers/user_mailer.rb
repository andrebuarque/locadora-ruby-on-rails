class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_email(user)
  	@user = user
  	@url = "http://videostore.com/login"
  	mail(to: @user.login, subject: "Welcome to My Awesome Site")
  end

end
