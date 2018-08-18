class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up)  { |u| u.permit(  :email,:password, :password_confirmation, roles: []) }
  end

  layout :manejo_vista_admin
  private
  def manejo_vista_admin
    if devise_controller?
      "login"
    else
      "application"
    end
  end
end
