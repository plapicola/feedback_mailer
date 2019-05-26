require 'rails_helper'

RSpec.describe "Mails API", type: :request do
  describe "Mail Creation" do
    it "Creates and dispatches new mails" do
      post "/api/v1/messages", params: {_json: [
        {
          email: "test@example.com",
          survey_name: "Cool Survey",
          user_name: "Survey User"
        },
        {
          email: "example@email.com",
          survey_name: "Group Feedback",
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
