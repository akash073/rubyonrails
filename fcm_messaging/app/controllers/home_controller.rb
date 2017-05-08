class HomeController < ApplicationController
  require 'android_messaging/fcm_registration'
  def index

    #from api
    @current_user_id=16
    @current_regiatration_token="abc"


    @fcm_registration = AndroidMessaging::FcmResgistation.new(@current_user_id,@current_regiatration_token)

    @fcm_registration.SetOrUpdateFcmResgitrationToken







  end
end
