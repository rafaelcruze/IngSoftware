class SeAgregaForeignKeyAPagos < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :pagos, :users, column: :users_id, primary_key: :id
    #add_foreign_key :pagos, :estudiantes, column: :estudiante_id, primary_key: :id
  end
end
