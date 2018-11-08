class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :task_list_id
      t.integer :doer_id
      t.string :name

      t.timestamps
    end
  end
end
