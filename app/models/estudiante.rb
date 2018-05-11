class Estudiante < ApplicationRecord
  has_many :pagos #un estudiante puede tener asociados muchos pagos
  has_many :agendas
  belongs_to :usuario #un estudiante puede tener asociado un usuario(apoderado)
  belongs_to :comuna #un estudiante puede tener asociado una comuna
  belongs_to :jornada #un estudiante puede ser asociada una jornada
  belongs_to :nivel_educacional #un estudiante puede ser asociado un nivel educacional

  validates :nombres , presence:  { message: 'Ingrese los nombres '} , length: {in: 3..20}
  validates :apellidos , presence: { message: 'Ingrese los apellidos'}, length: {in: 3..20}
  validates :rut , presence: { message: 'Ingrese un rut'}, uniqueness: true
  validates :comuna_id , presence: { message: 'Seleccione alguna comuna'}
  validates :jornada_id , presence: { message: 'Selecciones alguna jornada'}
  validates :nivel_educacional_id , presence: { message: 'Seleccione algún nivel educacional'}
  validates :fecha_nacimiento , presence: {message: 'Ingrese la fecha de nacimiento'}
end
