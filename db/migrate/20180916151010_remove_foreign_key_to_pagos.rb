class RemoveForeignKeyToPagos < ActiveRecord::Migration[5.1]
  def change
  	remove_foreign_key :pagos, column: :users_id
  end
end
