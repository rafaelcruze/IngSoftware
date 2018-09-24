class EstudiantesController < ApplicationController
  load_and_authorize_resource
  before_action :set_estudiante, only: [:mostrar,:eliminar,:editar,:update]

  def index
    @estudiantes = Estudiante.all
    @estudiantes = Estudiante.paginate(:page => params[:page], :per_page =>10)
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'estudiantes/lista', pdf: 'Lista', layout: 'lista.html'}
    end
  end

  def mostrar
  end

  def eliminar
    @estudiante.destroy
    respond_to do |format|
      format.html {redirect_to estudiantes_path, notice: 'eliminado'}
    end
  end

  def update
     @estudiante = Estudiante.find(params[:id])
      if @estudiante.update(estudiante_params)
        redirect_to estudiante_path(@estudiante), notice: 'Se Actualizaron los datos'
      else
        render :editar
      end
  end

  def editar
  end

  def nuevo
    @estudiante= Estudiante.new
  end

  def crear
    @estudiante = Estudiante.new(estudiante_params)
    respond_to do |format|
      if @estudiante.save
        format.html {redirect_to estudiante_path(@estudiante), notice: 'Se Persistio la estudiante'}
      else
        format.html {render :nuevo}
      end
    end
  end


  private

  def estudiante_params
    params.require(:estudiante).permit(:nombres, :apellidos, :rut, :fecha_nacimiento, :direccion, :comuna_id, :nivel_educacional_id, :jornada_id, :users_id)
    #jamas nunca poner ID en strongs paramas
    #tampoco updated_at  created_at
  end

  def set_estudiante
    @estudiante = Estudiante.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'estudiantes/pdf', pdf: 'Pdf'}
  end

  end
end
