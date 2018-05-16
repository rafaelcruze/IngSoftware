class Pago < ApplicationRecord
  belongs_to :tipo_pago #pago puede tener asociado un tipo de pago
  belongs_to :estado #pago puede tener asociado uno estado
  belongs_to :usuario #pago puede estar asociado a un usuario
  belongs_to :estudiante #pago puede estar asociado a un estudiante

  validates :valor , presence: { message: 'Ingrese un valor'}
  validates :abono , presence: { message: 'Ingrese un abono'}
  validates :saldo , presence: { message: 'Ingrese un saldo'}
  validates :fecha_pago , presence: { message: 'Ingrese una fecha de pago'}
  validates :tipo_pago_id , presence: { message: 'Seleccione tipo de pago'}
  validates :estado_id , presence: { message: 'Seleccione estado de pago'}
  validates :usuario_id , presence: { message: 'Seleccione al apoderado'}
  validates :estudiante_id , presence: { message: 'Seleccione al estudiante'}
end
