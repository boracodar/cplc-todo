class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :description, null: false
      t.date :due_date
      t.boolean :done, default: false, null: false

      t.timestamps
    end
  end
end
