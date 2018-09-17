class Pago < ApplicationRecord
  belongs_to :tipo_pago #pago puede tener asociado un tipo de pago
  belongs_to :estado #pago puede tener asociado uno estado
  has_many :user #pago puede estar asociado a un usuario
  belongs_to :estudiante #pago puede estar asociado a un estudiante

  validates :valor , presence: { message: 'Ingrese un valor'}, numericality: { only_integer: true }
  validates :abono , presence: { message: 'Ingrese un abono'}, numericality: { only_integer: true }
  validates :saldo , presence: { message: 'Ingrese un saldo'}, numericality: { only_integer: true }
  validates :fecha_pago , presence: { message: 'Ingrese una fecha de pago'}
  validates :tipo_pago_id , presence: { message: 'Seleccione tipo de pago'}
  validates :estado_id , presence: { message: 'Seleccione estado de pago'}
  validates :users_id , presence: { message: 'Seleccione al apoderado'}
  validates :estudiante_id , presence: { message: 'Seleccione al estudiante'}
  validate :fecha_de_pago
  validate :positivo

  def fecha_de_pago
    if !fecha_pago.blank? and fecha_pago < Date.today
      errors.add(:fecha, "Ingresaste fecha que ya pasó")
    end
  end

  def positivo
    if !valor.blank? and valor<=0
      errors.add(:valor, ": Debe ingresar cantidad superior a 0")
    end
end
end
