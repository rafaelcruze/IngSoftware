class ApoderadosController < ApplicationController
  before_action :set_apoderado, only: [:mostrar,:eliminar,:editar,:update]


  def index
    @apoderados = Apoderado.all
  end

  def mostrar

  end

  def nuevo
    @apoderado= Apoderado.new
  end

  def eliminar

    @apoderado.destroy
    respond_to do |format|
      format.html {redirect_to apoderados_path, notice: 'eliminado'}
    end
  end

  def update

    respond_to do |format|
      if @apoderado.update(apoderado_params)
        format.html {redirect_to apoderado_path(@apoderado), notice: 'Se Actualizaron los datos'}
      else
        render :editar
      end
    end
  end

  def editar

  end



  def crear
    @apoderado = Apoderado.new(apoderado_params)
    respond_to do |format|
      if @apoderado.save
        format.html {redirect_to apoderado_path(@apoderado), notice: 'Se Persistio la estudiante'}
      else
        format.html {render :nuevo}
      end
    end
  end



  private

  def apoderado_params
    params.require(:apoderado).permit(:nombres, :apellidos, :rut, :fecha_nacimiento, :direccion, :celular, :comuna_id)
    #jamas nunca poner ID en strongs paramas
    #tampoco updated_at  created_at
  end

  def set_apoderado
    @apoderado = Apoderado.find(params[:id])
  end
end
