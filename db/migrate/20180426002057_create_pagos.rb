class CreatePagos < ActiveRecord::Migration[5.1]
  def change
    create_table :pagos do |t|
      t.integer :valor
      t.date :fecha_pago
      t.integer :tipo_pago_id
      t.integer :estado_id
      t.integer :usuario_id
      t.integer :alumno_id

      t.timestamps
    end
  end
end
