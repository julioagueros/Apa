class UserMailer < ActionMailer::Base
  default from: "notifications@example.com"

  def welcome_email (user)
	@user = user
	@url = "http://www.correcriminal.org/"
	mail(:to => user.email, :subject => "Registrado")
  end
end
