class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :technical_skill
      t.integer :problem_solving_ability
      t.integer :communication_skill
      t.integer :security_awareness
      t.integer :leadership_and_collaboration
      t.integer :learning_and_adaptability

      t.timestamps
    end
  end
end
