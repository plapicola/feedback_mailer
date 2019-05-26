class AddUserNameToMails < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :user_name, :string
  end
end
