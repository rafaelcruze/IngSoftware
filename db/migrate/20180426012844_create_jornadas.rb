class CreateJornadas < ActiveRecord::Migration[5.1]
  def change
    create_table :jornadas do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
