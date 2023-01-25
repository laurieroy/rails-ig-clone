class ApplicationController < ActionController::Base
   before_action :authenticate_user!
   before_action :configure_permitted_parameters, if: :devise_controller?

   protected

   def configure_permitted_parameters
      su_attributes = %i[full_name phone_number username]
      edit_attributes = %i[full_name phone_number username profile_picture bio private]

      devise_parameter_sanitizer.permit(:sign_up, keys: su_attributes)
      devise_parameter_sanitizer.permit(:account_update, keys: edit_attributes)
   end
end
