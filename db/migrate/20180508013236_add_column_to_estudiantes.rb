class AddColumnToEstudiantes < ActiveRecord::Migration[5.1]
  def change
    add_column :estudiantes, :direccion, :string
  end
end
