class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombres
      t.string :apellidos
      t.string :rut
      t.date :fecha_nacimiento
      t.integer :comuna_id
      t.integer :nivel_educacional_id
      t.integer :jornada_id

      t.timestamps
    end
  end
end
