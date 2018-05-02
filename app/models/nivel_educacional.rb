class NivelEducacional < ApplicationRecord
  has_many :estudiantes #nivel educacional lo puede tener muchos estudiantes
end
