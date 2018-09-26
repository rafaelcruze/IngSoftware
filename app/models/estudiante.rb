class Estudiante < ApplicationRecord
  has_many :pagos #un estudiante puede tener asociados muchos pagos
  has_many :agendas
  belongs_to :user #un estudiante puede tener asociado un usuario(apoderado)
  belongs_to :comuna #un estudiante puede tener asociado una comuna
  belongs_to :jornada #un estudiante puede ser asociada una jornada
  belongs_to :nivel_educacional #un estudiante puede ser asociado un nivel educacional

  validates :nombreuno , presence:  { message: 'Ingrese el primer nombre '} , length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidouno , presence: { message: 'Ingrese el primer apellido'}, length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
  validates :nombredos , presence:  { message: 'Ingrese el segundo nombre '} , length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidodos , presence: { message: 'Ingrese el segundo apellido'}, length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
  VALID_RUT_REGEX = /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i
  validates :rut , presence: { message: 'Ingrese un rut'}, uniqueness: true, format: {with: VALID_RUT_REGEX}
  validates :direccion, presence: {message: 'Ingrese direccion'}
  validates :comuna_id , presence: { message: 'Seleccione alguna comuna'}
  validates :jornada_id , presence: { message: 'Selecciones alguna jornada'}
  validates :nivel_educacional_id , presence: { message: 'Seleccione algún nivel educacional'}
  validates :fecha_nacimiento , presence: {message: 'Ingrese la fecha de nacimiento'}
  validate :fecha_de_nacimiento_debe_ser_en_pasado


  def fecha_de_nacimiento_debe_ser_en_pasado
    if fecha_nacimiento.present? && fecha_nacimiento >= Date.today
      errors.add(:fecha_nacimiento, "debe ser anterior a la fecha de hoy")
    end
end
end
