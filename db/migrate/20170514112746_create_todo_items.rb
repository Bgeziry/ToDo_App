class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :discription
      t.boolean :status

      t.timestamps
    end
  end
end
