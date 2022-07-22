class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.string :title

      t.references :creator, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
