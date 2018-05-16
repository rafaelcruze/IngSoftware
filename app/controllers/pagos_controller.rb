class PagosController < ApplicationController
  before_action :set_pago, only: [:mostrar,:eliminar,:editar,:update]

  def index
    @pagos = Pago.all
  end

  def mostrar

  end

  def eliminar
    @pago.destroy
    respond_to do |format|
      format.html {redirect_to pagos_path, notice: 'eliminado'}
    end
  end

  def update

    respond_to do |format|
      if @pago.update(pago_params)
        format.html {redirect_to pago_path(@pago), notice: 'Se Actualizaron los datos'}
      else
        render :editar
      end
    end
  end

  def editar

    end

  def nuevo
    @pago=Pago.new
  end

  def crear
    @pago= Pago.new(pago_params)
    respond_to do |format|
      if @pago.save
        format.html {redirect_to pago_path(@pago), notice: 'Se Persistio el Pago'}
      else
        format.html {render :nuevo}
      end
    end
  end

    private

    def pago_params
      params.require(:pago).permit(:valor,:fecha_pago, :saldo, :abono, :estudiante_id, :usuario_id,:tipo_pago_id, :estado_id)
      #jamas nunca poner ID en strongs paramas
      #tampoco updated_at  created_at
    end

    def set_pago
      @pago = Pago.find(params[:id])
    end
  end