class Api::V1::WelcomeController
  def create
    mail = Mail.new(message_params)
    if mail.save
      WelcomeMailer.welcome_message(mail).deliver_later
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
