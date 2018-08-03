class CreateUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :usuarios do |t|
      t.string :nombres
      t.string :apellidos
      t.string :rut
      t.string :email
      t.string :contraseña
      t.date :fecha_nacimiento
      t.string :direccion
      t.integer :comuna_id
      t.integer :tipo_usuario_id
      t.timestamps
    end
  end
end
