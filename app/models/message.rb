class Message < ApplicationRecord
  validates_presence_of :message_name
  validates_presence_of :user_name
  validates_presence_of :email
end
