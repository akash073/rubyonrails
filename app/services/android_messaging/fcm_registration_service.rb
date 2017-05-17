module AndroidMessaging

  class FcmResgistationService
    attr_reader :current_user_id
    attr_reader :current_regiatration_token

    def initialize(user_id,registration_token)
      @current_user_id=user_id
      @current_regiatration_token=registration_token
    end


    def SetOrUpdateFcmResgitrationToken
      @user_fcm_registration=FcmAndroidMessaging.where("user_id = ? ",@current_user_id).first

      #create new registration
      if(@user_fcm_registration)
        if @user_fcm_registration.registration_token != @current_regiatration_token
          @user_fcm_registration.registration_token=@current_regiatration_token
          @user_fcm_registration.save
        end
      else
        @new_fcm_registration = FcmAndroidMessaging.new(:user_id => @current_user_id, :registration_token => @current_regiatration_token)
        @new_fcm_registration.save
      end
    end
  end

end