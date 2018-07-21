class SeAgregaLLaveForaneaApoderados < ActiveRecord::Migration[5.1]
  def change
    add_column :apoderados, :tipo_usuario_id, :integer
    add_foreign_key :apoderados , :tipo_usuarios,column: :tipo_usuario_id , primary_key: :id
    add_foreign_key :apoderados , :comunas,column: :comuna_id , primary_key: :id
  end
end
