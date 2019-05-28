class SurveyMailer < ApplicationMailer
  def new_survey_notice(message)
    @survey_name = message.message_name
    @user_name = message.user_name
    mail(to: message.email, subject: "#{message.message_name} is now available")
  end
end
