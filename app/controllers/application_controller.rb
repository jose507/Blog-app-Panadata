class ApplicationController < ActionController::Base
    before_action :authenticate_user! #Autentificacion antes de inciar session
    before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    added_attrs = [:nombre, :email, :password, :password_confirmation, :cerveza_fav, :ciudad, :fecha_nacimiento]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end