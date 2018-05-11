class Usuario < ApplicationRecord
  belongs_to :tipo_usuario #usuario puede estar asociado a un tipo de usuario
  belongs_to :comuna #usuario puede estar asociado a una comuna
  has_many :estudiantes #usuario puede tener asociado a uno o muchos estudiantes
  has_many :pagos #usuario puede estar asociado a muchos pagos
  has_many :agendas

  validates :nombres , presence: { message: 'Ingrese los nombres '} , length: {in: 3..20}
  validates :apellidos , presence: { message: 'Ingrese los apellidos '} , length: {in: 3..20}
  validates :direccion , presence: { message: 'Ingrese dirección'} , length: {in: 3..30}
  validates :email , presence: { message: 'Ingrese email'} , uniqueness: true
  validates :fecha_nacimiento , presence: { message: 'Ingrese la fecha de nacimiento'}
  validates :contraseña , presence: { message: 'Ingrese contraseña'} , length: {in: 6..8}
  validates :rut , presence: { message: 'Ingrese rut'}, uniqueness: true
  validates :comuna_id , presence: { message: 'Selecciones comuna'}
  validates :tipo_usuario_id , presence: { message: 'Selecciones tipo de usuario'}
end
