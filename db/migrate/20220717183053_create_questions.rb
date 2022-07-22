class CreateQuestions < ActiveRecord::Migration[7.0]
  def up
    execute <<-SQL
      CREATE TYPE question_types AS ENUM ('single', 'multiple');
    SQL

    create_table :questions do |t|
      t.string :title

      t.column :type, :question_types

      t.belongs_to :quiz

      t.timestamps
    end
  end

  def down
    drop_table :questions

    execute <<-SQL
      DROP TYPE question_types;
    SQL
  end
end
