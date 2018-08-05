class TipoUsuario < ApplicationRecord
  has_many :users #tipo usuario puede estar asociado a muchos usuarios
end
