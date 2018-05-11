class AddColumnObservacionToEstudiantes < ActiveRecord::Migration[5.1]
  def change
    add_column :estudiantes, :observacion, :text
  end
end
