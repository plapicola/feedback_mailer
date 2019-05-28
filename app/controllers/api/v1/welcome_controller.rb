class Api::V1::WelcomeController < ApplicationController
  def create
    message = Message.new(message_params)
    if message.save
      WelcomeMailer.welcome_message(message).deliver_later
      render status: 201, json: {success: "Your message has been sent"}
    else
      render status: 422, json: {error: "Unable to deliver message"}
    end
  end

  private

  def message_params
    params.permit(:email, :message_name, :user_name)
  end
end
