class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
      attributes = %i[full_name phone_number username ]
      devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
   end
end
