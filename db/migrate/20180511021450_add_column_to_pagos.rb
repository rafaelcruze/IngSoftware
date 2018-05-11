class AddColumnToPagos < ActiveRecord::Migration[5.1]
  def change
    add_column :pagos, :saldo, :integer
    add_column :pagos, :abono, :integer
  end
end
