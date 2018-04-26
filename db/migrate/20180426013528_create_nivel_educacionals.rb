class CreateNivelEducacionals < ActiveRecord::Migration[5.1]
  def change
    create_table :nivel_educacionals do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
