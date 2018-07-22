class CambioNombreColumnaEnPagosYAgendas < ActiveRecord::Migration[5.1]
  def change
    rename_column :agendas, :usuario_id, :users_id
    rename_column :pagos, :usuario_id, :users_id
    rename_column :estudiantes, :apoderado_id, :users_id
  end
end
