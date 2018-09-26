class RenameColumn < ActiveRecord::Migration[5.1]
  def change
  	rename_column :agendas, :users_id, :user_id
  	rename_column :estudiantes, :users_id, :user_id
  	rename_column :pagos, :users_id, :user_id
  end
end
