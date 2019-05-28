require 'rails_helper'

RSpec.describe "Welcome API", type: :request do
  describe "Mail Creation" do
    it "Creates and dispatches new mails" do
      allow_any_instance_of(SurveyMailer).to receive(:new_survey_notice).once
      post "/api/v1/welcome", params: {
          email: "test@example.com",
          message_name: "Welcome Email",
          user_name: "Survey User"
      }

      result = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(201)
      expect(result).to be_a Hash
      expect(result).to have_key :success
      expect(result[:success]).to eq("Your messages have been sent")
    end
  end
end
