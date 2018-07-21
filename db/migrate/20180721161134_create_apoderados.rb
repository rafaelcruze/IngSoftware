class CreateApoderados < ActiveRecord::Migration[5.1]
  def change
    create_table :apoderados do |t|
      t.string :nombres
      t.string :apellidos
      t.string :rut
      t.date :fecha_nacimiento
      t.string :direccion
      t.integer :celular
      t.integer :comunda_id

      t.timestamps
    end
  end
end
