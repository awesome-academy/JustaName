class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to root_url, :alert => exception.message
  end


  


  include Pagy::Backend

    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
 
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end

  def after_sign_in_path_for(resource)
    if current_user.admin == true
      rails_admin_path
    else
      root_path
    end
  end
end
