class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:mostrar, :eliminar, :editar, :update]


  def index
    @usuarios = Usuario.all
  end

  def mostrar
  end

  def eliminar
    @usuario.destroy
    repond_to do |format|
      format.html {redirect_to usuarios_path, notice: 'eliminado'}
    end
  end

  def update
    repond_to do |format|
      if @usuario.update(estudiante_params)
        format.html {redirect_to usuario_path(@usuario), notice: 'Se actualizaron los datos'}
      else
        render :editar
      end
    end
  end

  def editar
  end

  def nuevo
    @usuario = Usuario.new
  end

  def crear
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save
        format.html {redirect_to usuario_path(@usuario), notice: 'Se persistio el usuario'}
      else
        format.html{render :nuevo}
      end
    end
  end

  private
  def usuario_params
    params.require(:usuario).permit(:nombres, :apellidos, :rut, :email, :contraseña, :fecha_nacimiento, :direccion, :comuna_id, :tipo_usuario_id)
  end

  def set_usuario
    @usuario = Usuario.find(params[:id])
  end
end
