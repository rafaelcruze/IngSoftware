class Estado < ApplicationRecord
  has_many :pagos #estado lo puede tener muchos pagos
end
