class DropTableApoderados < ActiveRecord::Migration[5.1]
  def change
    drop_table :apoderados, force: :cascade
  end
end
