class SeagreganColumnasAUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :nombres, :string
    add_column :users, :apellidos, :string
    add_column :users, :rut, :string
    add_column :users, :fecha_nacimiento, :date
    add_column :users, :direccion, :string
    add_column :users, :comuna_id, :integer
    add_column :users, :celular, :integer
  end
end
