class Apoderado < ApplicationRecord
  has_many :estudiantes
  has_many :pagos
  has_many :agendas
end
