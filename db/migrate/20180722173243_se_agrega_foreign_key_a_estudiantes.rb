class SeAgregaForeignKeyAEstudiantes < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :estudiantes , :users,column: :users_id , primary_key: :id
  end
end
