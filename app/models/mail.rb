class Mail < ApplicationRecord
  validate_presence_of :name
  validate_presence_of :email
end
