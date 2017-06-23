class CreateFcmAndroidMessagings < ActiveRecord::Migration
  def change
    create_table :fcm_android_messagings do |t|
      t.integer :user_id
      t.string :registration_token

      t.timestamps
    end
    add_index :fcm_android_messagings, [:user_id], :unique => true
  end
end
