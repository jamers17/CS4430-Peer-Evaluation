class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :evaluator_email
      t.string :evaluatee_email
      t.integer :assignment_id
      t.string :project
      t.integer :question1
      t.integer :question2
      t.integer :question3
      t.decimal :question4, precision: 5, scale: 2
      t.text :question5

      t.timestamps null: false
    end
  end
end
