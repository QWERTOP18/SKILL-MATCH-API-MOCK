class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :technical_skill
      t.integer :problem_solving_ability
      t.integer :communication_skill
      t.integer :security_awareness
      t.integer :leadership_and_collaboration
      t.integer :learning_and_adaptability
      t.references :engineer_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
