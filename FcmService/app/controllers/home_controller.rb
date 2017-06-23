class HomeController < ApplicationController
  require 'android_messaging/fcm_registration_service'
  def index

    #from api
    @current_user_id=18
    @current_regiatration_token="abc"


    @fcm_registration = AndroidMessaging::FcmResgistationService.new(@current_user_id,@current_regiatration_token)

    @fcm_registration.SetOrUpdateFcmResgitrationToken







  end
end
