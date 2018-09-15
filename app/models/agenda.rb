class Agenda < ApplicationRecord
  belongs_to :user
  belongs_to :estudiante

  validates :comentario, presence: { message: 'Ingrese algún comentario'}
  validates :fecha, presence: { message: 'Ingresa alguna fecha'}
  validate :fecha_de_comentario

  def fecha_de_comentario
    if !fecha.blank? and fecha < Date.today
      errors.add(:fecha, "Ingresaste fecha que ya pasó")
    end
  end
end
