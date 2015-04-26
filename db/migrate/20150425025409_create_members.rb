class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :password_digest
      t.string :first
      t.string :last
      t.boolean :teacher

      t.timestamps null: false
    end
  end
end
