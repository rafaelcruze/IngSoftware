class CambiarColumnaTablaEstudiantes < ActiveRecord::Migration[5.1]
  def change
    rename_column :estudiantes, :usuario_id, :apoderado_id
  end
end
