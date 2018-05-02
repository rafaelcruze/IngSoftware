class Estudiante < ApplicationRecord
  has_many :pagos #un estudiante puede tener asociados muchos pagos
  belongs_to :usuario #un estudiante puede tener asociado un usuario(apoderado)
  belongs_to :comuna #un estudiante puede tener asociado una comuna
  belongs_to :jornada #un estudiante puede ser asociada una jornada
  belongs_to :nivel_educacional #un estudiante puede ser asociado un nivel educacional
end
