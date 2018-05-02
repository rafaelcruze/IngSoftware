class Jornada < ApplicationRecord
  has_many :estudiantes #jornada puede estar asociado a muchos estudiantes
end
