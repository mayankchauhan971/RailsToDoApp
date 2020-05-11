class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.integer :priority
      t.date :duedate
      t.references :todo_list, null: false

      t.timestamps
    end
  end
end
