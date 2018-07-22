class Comuna < ApplicationRecord
  has_many :estudiantes #comuna puede estar asociado a muchos estudiantes
  has_many :users #comuna puede estar asociado a muchos usuarios
end
