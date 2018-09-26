class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:mostrar,:eliminar,:editar,:update]

  def index
    @users = User.all
  end

  def mostrar
  end

  def eliminar
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_path, notice: 'eliminado'}
    end
  end

  def update
      if @user.update(user_params)
        respond_to do |format|
        format.html {redirect_to user_path(@user), notice: 'Se Actualizaron los datos'}
      end
      else
        render :editar
      end
  end

  def editar
  end

  def nuevo
    @user= User.new
  end

  def crear
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to user_path(@user), notice: 'Se Persistio la estudiante'}
      else
        format.html {render :nuevo}
      end
    end
  end


  private

  def user_params
    params.require(:user).permit(:nombreuno, :nombredos, :apellidouno, :apellidodos, :rut, :fecha_nacimiento, :direccion, :comuna_id, :celular, :email, :password, :password_confirmation, :tipo_usuario_id)
    #jamas nunca poner ID en strongs paramas
    #tampoco updated_at  created_at
  end

  def set_user
    @user = User.find(params[:id])
  end
end
