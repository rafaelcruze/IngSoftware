class AddForeignKeyToEstudiantes < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :estudiantes , :usuarios,column: :usuario_id , primary_key: :id
    add_foreign_key :estudiantes , :comunas,column: :comuna_id , primary_key: :id
    add_foreign_key :estudiantes , :nivel_educacionals,column: :nivel_educacional_id , primary_key: :id
  end
end
