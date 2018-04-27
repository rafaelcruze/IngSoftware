class AddForeignKeyToPagos < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pagos, :tipo_pagos,column: :tipo_pago_id , primary_key: :id
    add_foreign_key :pagos, :estados,column: :estado_id , primary_key: :id
    add_foreign_key :pagos, :usuarios,column: :usuario_id , primary_key: :id
    add_foreign_key :pagos, :estudiantes,column: :alumno_id , primary_key: :id
  end
end
