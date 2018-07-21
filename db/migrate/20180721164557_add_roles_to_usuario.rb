class AddRolesToUsuario < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :roles, :integer
  end
end
