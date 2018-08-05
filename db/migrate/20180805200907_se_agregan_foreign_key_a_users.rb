class SeAgreganForeignKeyAUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :tipo_usuario_id, :integer
    add_foreign_key :users , :tipo_usuarios, column: :tipo_usuario_id , primary_key: :id
    add_foreign_key :users , :comunas, column: :comuna_id, primary_key: :id
  end
end
