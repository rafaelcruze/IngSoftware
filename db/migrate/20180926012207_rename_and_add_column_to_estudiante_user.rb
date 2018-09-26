class RenameAndAddColumnToEstudianteUser < ActiveRecord::Migration[5.1]
  def change
  	rename_column :estudiantes, :nombres, :nombreuno
  	rename_column :estudiantes, :apellidos, :apellidouno
  	rename_column :users, :nombres, :nombresuno
  	rename_column :users, :apellidos, :apellidouno
  	add_column :estudiantes, :nombredos, :string
  	add_column :estudiantes, :apellidodos, :string
  	add_column :users, :nombredos, :string
  	add_column :users, :apellidodos, :string
  end
end
