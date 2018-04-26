class CreateComunas < ActiveRecord::Migration[5.1]
  def change
    create_table :comunas do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
