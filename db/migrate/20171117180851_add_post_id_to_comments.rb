class AddListTaskIdToTasks < ActiveRecord::Migration[5.1]
  def change
  	add_column :tasks, :listTask_id, :integer
  end
end
