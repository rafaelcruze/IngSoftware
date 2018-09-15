class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :estudiante
  has_many :pagos
  has_many :agendas
  belongs_to :tipo_usuario
  belongs_to :comuna, optional: true

  validates :nombres , presence:  { message: 'Ingrese los nombres '} , length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidos , presence: { message: 'Ingrese los apellidos'}, length: {in: 3..20}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
  VALID_RUT_REGEX = /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i
  validates :rut , presence: { message: 'Ingrese un rut'}, uniqueness: true, format: {with: VALID_RUT_REGEX}
  validates :comuna_id , presence: { message: 'Seleccione alguna comuna'}
  validates :fecha_nacimiento , presence: {message: 'Ingrese la fecha de nacimiento'}
  validates :celular, presence: {message: 'Ingrese celular'}, length: {is: 9}
end
