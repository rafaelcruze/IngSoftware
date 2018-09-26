class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :estudiantes
  has_many :pagos
  has_many :agendas
  belongs_to :tipo_usuario
  belongs_to :comuna, optional: true
  has_many :questions
  has_many :answers

  validates :nombreuno , presence:  { message: 'Ingrese el primer nombre '} , length: {in: 3..20, message:'El nombre debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidouno , presence: { message: 'Ingrese el primer apellido'}, length: {in: 3..20, message:'El apellido debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
    validates :nombredos , presence:  { message: 'Ingrese el segundo nombre '} , length: {in: 3..20, message:'El nombre debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los nombres"}
  validates :apellidodos , presence: { message: 'Ingrese el segundo apellido'}, length: {in: 3..20, message:'El apellido debe ser de mínimo largo 3'}, format: {with: /\A[a-zA-Z]+\z/,
    message: "Se permiten solo letras en los apellidos"}
  VALID_RUT_REGEX = /\A(\d{1,3})\.(\d{1,3})\.(\d{1,3})\-(k|\d{1})\Z/i
  validates :rut , presence: { message: 'Ingrese un rut'}, uniqueness: true, format: {with: VALID_RUT_REGEX}
  validates :comuna_id , presence: { message: 'Seleccione alguna comuna'}
  validates :fecha_nacimiento , presence: {message: 'Ingrese la fecha de nacimiento'}
  validates :celular, presence: {message: 'Ingrese celular'}, length: {is: 9, message:'Largo debe ser 9'}
  validate :fecha_de_nacimiento_debe_ser_en_pasado
  validate :edadminima


def fecha_de_nacimiento_debe_ser_en_pasado
    if fecha_nacimiento.present? && fecha_nacimiento >= Date.today
      errors.add(:fecha_nacimiento, "debe ser anterior a la fecha de hoy")
    end
end


  def edadminima
     if fecha_nacimiento.present? && fecha_nacimiento >= 18.year.ago
          errors.add(:fecha_nacimiento, ": Usuarios deben ser mayores de 18 años")
     end
  end


end