class Changecolumnpagos < ActiveRecord::Migration[5.1]
  def change
    change_column :pagos, :valor, :integer, :null => false
    change_column :pagos, :abono, :integer, :null => false
  end
end
