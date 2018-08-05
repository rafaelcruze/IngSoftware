class SeAgregaForeignKeyAEstudiante < ActiveRecord::Migration[5.1]
  def change
  add_foreign_key :estudiantes, :jornadas, column: :jornada_id, primary_key: :id
  end
end
