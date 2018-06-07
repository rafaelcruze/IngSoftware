class DropUsuarios < ActiveRecord::Migration[5.1]
  def change
    drop_table :usuarios, force: :cascade
  end
end
