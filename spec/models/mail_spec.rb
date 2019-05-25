require 'rails_helper'

RSpec.describe Mail, type: :model do
  describe 'validations' do
    it {should validate_presence_of :email}
    it {should validate_presence_of :survey_name}
  end
end
