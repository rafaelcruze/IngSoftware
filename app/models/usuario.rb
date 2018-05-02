class Usuario < ApplicationRecord
  belongs_to :tipo_usuario #usuario puede estar asociado a un tipo de usuario
  belongs_to :comuna #usuario puede estar asociado a una comuna
  has_many :estudiantes #usuario puede tener asociado a uno o muchos estudiantes
  has_many :pagos #usuario puede estar asociado a muchos pagos
end
