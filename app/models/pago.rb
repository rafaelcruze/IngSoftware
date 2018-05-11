class Pago < ApplicationRecord
  belongs_to :tipo_pago #pago puede tener asociado un tipo de pago
  belongs_to :estado #pago puede tener asociado uno estado
  belongs_to :usuario #pago puede estar asociado a un usuario
  belongs_to :estudiante #pago puede estar asociado a un estudiante
end
