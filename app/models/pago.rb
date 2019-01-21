class Pago < ApplicationRecord
  belongs_to :tipo_pago #pago puede tener asociado un tipo de pago
  belongs_to :estado #pago puede tener asociado uno estado
  has_many :user #pago puede estar asociado a un usuario
  belongs_to :estudiante #pago puede estar asociado a un estudiante

  validates :valor , presence: { message: 'Ingrese un valor'}, numericality: { only_integer: true }
  validates :abono , presence: { message: 'Ingrese un abono'}, numericality: { only_integer: true }
  validates :fecha_pago , presence: { message: 'Ingrese una fecha de pago'}
  validates :tipo_pago_id , presence: { message: 'Seleccione tipo de pago'}
  validates :estado_id , presence: { message: 'Seleccione estado de pago'}
  validates :user_id , presence: { message: 'Seleccione al apoderado'}
  validates :estudiante_id , presence: { message: 'Seleccione al estudiante'}
  validate :fecha_de_pago
  #validate :positivo
  #validate :validapago
  #validate :blancos
  validate :abonocero
  before_save :resta

  def fecha_de_pago
    if !fecha_pago.blank? and fecha_pago < Date.today
      errors.add(:fecha, "Ingresaste fecha que ya pasó")
    end
  end

  def abonocero
      if abono == 0
        errors.add(:abono, "Abono no puede ser cero")
    end
  end

  def resta
    self.saldo = self.valor-self.abono
  end

end
