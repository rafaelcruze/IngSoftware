class AddColumnToUserBoolean < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :estado, :boolean, default: true
  end
end
