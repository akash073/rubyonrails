class CreateS3fileUploads < ActiveRecord::Migration
  def change
    create_table :s3file_uploads do |t|
      t.string :file

      t.timestamps
    end
  end
end
