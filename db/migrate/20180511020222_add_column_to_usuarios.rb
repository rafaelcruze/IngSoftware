class AddColumnToUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :celular, :integer
  end
end
