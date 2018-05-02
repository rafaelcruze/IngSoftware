class TipoUsuario < ApplicationRecord
  has_many :usuarios #tipo usuario puede estar asociado a muchos usuarios
end
