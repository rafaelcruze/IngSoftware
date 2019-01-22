class PagosController < ApplicationController
  load_and_authorize_resource
  before_action :set_pago, only: [:mostrar,:editar,:update]

  def index
    #@pagos = Pago.search(params[:search])
    @pagos = Pago.order("fecha_pago DESC")
    respond_to do |format|
      format.html
      format.json
      format.pdf {render template: 'pagos/listapagos', pdf: 'Listapagos', layout: 'lista.html'}
    end
  end

  def buscar
     @pagos = @pagos.where("estudiante_id = ?", params[:estudiante_id])
     @id_estudiante = params[:estudiante_id]
  end

  def show
    @pagos = Pago.where("estudiante_id = ?", params[:id])
    render template: 'pagos/buscapagos2.pdf', pdf: 'listapagos2', layout: 'lista.html'
  end

  def mostrar

  end

  #def eliminar
 #   @pago.destroy
    #respond_to do |format|
    #  format.html {redirect_to pagos_path, notice: 'eliminado'}
    #end
  #end

  def update
    @pago = Pago.find(params[:id])
      if @pago.update(pago_params)
        redirect_to pago_path(@pago), notice: 'Se Actualizaron los datos'
      else
        render :editar
      end
  end

  def editar

    end

  def nuevo
    @pago=Pago.new
  end

  def crear
    @pago= Pago.new(pago_params)
    #@pago.saldo = @pago.valor - @pago.abono
    if @pago.abono != nil and @pago.valor != nil
      respond_to do |format|
        if @pago.save
          format.html {redirect_to pago_path(@pago), notice: 'Se agrega el pago'}
        else
          format.html {render :nuevo}
        end
      end
    else
    @pago.abono = 0
    @pago.valor = 0
    respond_to do |format|
      if @pago.save
        format.html {redirect_to pago_path(@pago), notice: 'Se agrega el pago'}
      else
        format.html {render :nuevo}
      end
    end
  end
  end

    private

    def pago_params
      params.require(:pago).permit(:valor,:fecha_pago, :saldo, :abono, :estudiante_id, :user_id,:tipo_pago_id, :estado_id)
      #jamas nunca poner ID en strongs paramas
      #tampoco updated_at  created_at
    end

    def set_pago
      @pago = Pago.find(params[:id])
    end
  end
