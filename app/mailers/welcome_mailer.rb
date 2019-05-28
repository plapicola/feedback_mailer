class WelcomeMailer < ApplicationMailer
  def welcome_message(mail)
    @user_name = mail.user_name
    @user_email = mail.email
    mail(to: @user_email, subject: "Turing Feedback registration")
  end
end
