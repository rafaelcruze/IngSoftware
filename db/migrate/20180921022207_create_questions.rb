class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :users_id

      t.timestamps
    end
  end
end
