class S3fileUploadController < ApplicationController
  protect_from_forgery :except => [ :create]
  def index
    @s3file_upload=S3fileUpload.new

  end

  def create

    @file =:params[0]
    @i=0
  end
end
