class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |usuarios|
      usuarios.permit(:nombres, :apellidos, :rut, :fecha_nacimiento, :direccion, :celular, :password, :comuna_id, :tipo_usuario_id, :email, :password_confirmation)
    end
  end
end
