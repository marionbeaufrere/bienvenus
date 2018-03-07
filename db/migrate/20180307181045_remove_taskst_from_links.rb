class RemoveTaskstFromLinks < ActiveRecord::Migration[5.1]
  def change
    remove_reference :links, :tasks, foreign_key: true
  end
end
