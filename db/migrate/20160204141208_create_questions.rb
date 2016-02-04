class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :text
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.references :deck, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
