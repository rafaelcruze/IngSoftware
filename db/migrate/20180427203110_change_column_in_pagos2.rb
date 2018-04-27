class ChangeColumnInPagos2 < ActiveRecord::Migration[5.1]
  def change
    rename_column :pagos, :alumno_id, :usuario_id
  end
end
