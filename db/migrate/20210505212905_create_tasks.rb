class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.boolean :status
      t.datetime :due_to
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end