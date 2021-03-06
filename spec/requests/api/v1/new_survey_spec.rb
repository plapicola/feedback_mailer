require 'rails_helper'

RSpec.describe "Mails API", type: :request do
  describe "Mail Creation" do
    it "Creates and dispatches new mails" do
      allow_any_instance_of(SurveyMailer).to receive(:new_survey_notice).once
      post "/api/v1/new_survey", params: {_json: [
        {
          email: "test@example.com",
          message_name: "Cool Survey",
          user_name: "Survey User"
        },
        {
          email: "example@email.com",
          message_name: "Group Feedback",
          user_name: "Mike Dao"
        }
      ]}

      result = JSON.parse(response.body, symbolize_names: true)

      expect(response.status).to eq(201)
      expect(result).to be_a Hash
      expect(result).to have_key :success
      expect(result[:success]).to eq("Your messages have been sent")
    end
  end
end
