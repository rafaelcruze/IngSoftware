class ChangeColumnInPagos < ActiveRecord::Migration[5.1]
  def change
    rename_column :pagos, :usuario_id, :estudiante_id
  end
end
