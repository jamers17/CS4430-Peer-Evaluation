class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :description
      t.datetime :due_date

      t.timestamps null: false
    end
  end
end
