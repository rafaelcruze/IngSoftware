class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :set_user, only: [:mostrar,:eliminar,:editar,:update]

  def index
    @users = @users.where("nombreuno ILIKE ?", "%#{params[:nombreuno]}%")
    @users = @users.where("apellidouno ILIKE ?", "%#{params[:apellidouno]}%")
    respond_to do |format|
      format.html
      format.json
      end
  end

  def mostrar
  end

  def eliminar
    #@user.destroy
    @user.estado = false
    @user.save
    respond_to do |format|
      format.html {redirect_to users_path, notice: 'Apoderado no regular'}
    end
  end

  def update
      if @user.update(user_params)
        respond_to do |format|
        format.html {redirect_to "/users", notice: 'Se Actualizaron los datos'}
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
        format.html {redirect_to "/users", notice: 'Se Registro Usuario'}
      else
        format.html {render :nuevo}
      end
    end
  end


  private

  def user_params
    params.require(:user).permit(:nombreuno, :nombredos, :apellidouno, :apellidodos, :rut, :fecha_nacimiento, :direccion, :comuna_id, :celular, :email, :password, :password_confirmation, :tipo_usuario_id, :estado)
    #jamas nunca poner ID en strongs paramas
    #tampoco updated_at  created_at
  end

  def set_user
    @user = User.find(params[:id])
  end
end
