class TipoPago < ApplicationRecord
  has_many :pagos #tipo pago puede estar asociado a muchos pagos
end
