class AddTaskToLinks < ActiveRecord::Migration[5.1]
  def change
    add_reference :links, :task, foreign_key: true
  end
end
