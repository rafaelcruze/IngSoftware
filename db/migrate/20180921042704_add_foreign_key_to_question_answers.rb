class AddForeignKeyToQuestionAnswers < ActiveRecord::Migration[5.1]
  def change
  	add_foreign_key :questions, :users, column: :user_id, primary_key: :id
  end
end
