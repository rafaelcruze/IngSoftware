class AddColumnToEstudiantesBoolean < ActiveRecord::Migration[5.1]
  def change
  	add_column :estudiantes, :estado, :boolean, default: true
  end
end
