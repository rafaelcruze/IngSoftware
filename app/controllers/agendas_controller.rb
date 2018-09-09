class AgendasController < ApplicationController
  load_and_authorize_resource
  before_action :set_agenda, only: [:mostrar,:eliminar,:editar,:update]

  def index
    @agendas = Agenda.all
  end

  def mostrar

  end

  def eliminar
    @agenda.destroy
    respond_to do |format|
      format.html {redirect_to agendas_path, notice: 'eliminado'}
      end
  end

  def update
    respond_to do |format|
      if @agenda.update(agendas_params)
        format.html {redirect_to agenda_path(@agenda), notice: 'Se Actualizaron los datos'}
      else
        render :editar
      end
    end
  end


  def editar
  end

  def nuevo
    @agenda = Agenda.new
  end

  def crear
    @agenda = Agenda.new(agenda_params)
    respond_to do |format|
      if @agenda.save
        format.html {redirect_to agenda_path(@agenda), notice: 'Se Persistio la agenda'}
      else
        format.html {render :nuevo}
      end
    end
  end

  private

  def agenda_params
    params.require(:agenda).permit(:comentario, :fecha, :usuario_id, :estudiante_id)
    #jamas nunca poner ID en strongs paramas
    #tampoco updated_at  created_at
  end

  def set_agenda
    @agenda = Agenda.find(params[:id])
  end

end
