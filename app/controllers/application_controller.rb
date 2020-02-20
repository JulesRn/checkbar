class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?



private

  def configure_permitted_parameters
    update_attrs = [:username, :email, :password, :avatar, :password_confirmation, :current_password]
    devise_parameter_sanitizer.permit :sign_up, keys: update_attrs
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

end
