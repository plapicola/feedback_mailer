class AddUserNameToMails < ActiveRecord::Migration[5.2]
  def change
    add_column :mails, :user_name, :string
  end
end
