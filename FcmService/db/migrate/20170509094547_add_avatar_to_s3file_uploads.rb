class AddAvatarToS3fileUploads < ActiveRecord::Migration
  def change
    add_column :s3file_uploads, :avatar, :string
  end
end
