class CreateAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :agendas do |t|
      t.text :comentario
      t.date :fecha

      t.timestamps
    end
  end
end
