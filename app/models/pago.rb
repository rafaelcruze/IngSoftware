class Pago < ApplicationRecord
  has_many :tipo_pagos #pago puede tener asociado uno o más tipos de pago
  has_many :estados #pago puede tener asociado uno o más estados
  belongs_to :usuario #pago puede estar asociado a un usuario
  belongs_to :estudiante #pago puede estar asociado a un estudiante
end
