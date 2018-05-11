class AddForeignKeyToAgendas < ActiveRecord::Migration[5.1]
  def change
    add_column :agendas, :usuario_id, :integer
    add_column :agendas, :estudiante_id, :integer
    add_foreign_key :agendas, :usuarios,column: :usuario_id , primary_key: :id
    add_foreign_key :agendas, :estudiantes,column: :estudiante_id , primary_key: :id
  end
end
