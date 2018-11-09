class RemoveTaskListIdAndDoerIdFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_list_id
    remove_column :tasks, :doer_id
    remove_column :tasks, :user_id
    add_column :tasks, :invite_id, :integer
  end
end
