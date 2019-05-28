require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validations' do
    it {should validate_presence_of :email}
    it {should validate_presence_of :message_name}
    it {should validate_presence_of :user_name}
  end
end
