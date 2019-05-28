class UpdateMessageNameField < ActiveRecord::Migration[5.2]
  def change
    rename_column :messages, :survey_name, :message_name
  end
end
