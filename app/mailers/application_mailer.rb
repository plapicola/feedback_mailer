class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@turing-feedback-loop.herokuapp.com/'
  layout 'mailer'
end
