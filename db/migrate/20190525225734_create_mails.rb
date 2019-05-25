class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :email
      t.string :survey_name

      t.timestamps
    end
  end
end
