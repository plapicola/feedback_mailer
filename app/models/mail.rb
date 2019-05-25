class Mail < ApplicationRecord
  validates_presence_of :survey_name
  validates_presence_of :user_name
  validates_presence_of :email
end
