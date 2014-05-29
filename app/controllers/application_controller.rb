class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :profile_name << :first_name << :last_name 
    devise_parameter_sanitizer.for(:account_update) << :profile_name 
    devise_parameter_sanitizer.for(:account_update) << :first_name 
    devise_parameter_sanitizer.for(:account_update) << :last_name 
  end
  
end
