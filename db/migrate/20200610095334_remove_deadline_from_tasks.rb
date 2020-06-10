class RemoveDeadlineFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :deadline, :datetime
  end
end
