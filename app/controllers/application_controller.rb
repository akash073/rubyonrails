class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #global excetion handler
  rescue_from ::Exception ,with: :error_occurred

  protected

  def error_occurred(exception)

    error_details_json={error: exception.message ,
                        controller: params['controller'] ,
                        action: params['action'] ,
                        stacktrace: $ERROR_POSITION ,
                        source: $ERROR_INFO

    }.to_json

    if Rails.env.development?
      render json: error_details_json, status: 500
    else
      #Send mail by mailer
      @i=0
    end

    return
  end
end
