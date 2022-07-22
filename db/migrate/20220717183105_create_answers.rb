class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.string :label

      t.boolean :is_correct

      t.belongs_to :questions

      t.timestamps
    end
  end
end
