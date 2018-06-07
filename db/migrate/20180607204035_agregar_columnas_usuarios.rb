class AgregarColumnasUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :comuna_id, :integer
    add_column :usuarios, :tipo_usuario_id, :integer
    add_foreign_key :usuarios , :tipo_usuarios,column: :tipo_usuario_id , primary_key: :id
    add_foreign_key :usuarios , :comunas,column: :comuna_id , primary_key: :id
  end
end
