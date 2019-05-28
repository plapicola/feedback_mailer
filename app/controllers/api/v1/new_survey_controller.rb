class Api::V1::NewSurveyController < ApplicationController

  def create
    message_params.each do |message|
      new_message = Message.create({
        email: message[:email],
        user_name: message[:user_name],
        survey_name: message[:survey_name]
      })
      SurveyMailer.new_survey_notice(new_message).deliver_later
    end
    render status: 201, json: {success: "Your messages have been sent"}
  end

  private

  def message_params
    params.require(:_json)
  end
end
