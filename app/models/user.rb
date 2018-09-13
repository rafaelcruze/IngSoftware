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
end
