class S3fileUpload < ActiveRecord::Base

  mount_uploader :avatar, AvatarUploader # Tells rails to use this uploader for this model.
end
