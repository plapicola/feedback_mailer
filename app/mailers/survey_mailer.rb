class SurveyMailer < ApplicationMailer
  def new_survey_notice(message)
    @survey_name = message.survey_name
    @user_name = message.user_name
    mail(to: message.email, subject: "#{message.survey_name} is now available")
  end
end
