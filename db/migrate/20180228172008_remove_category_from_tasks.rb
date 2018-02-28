class RemoveCategoryFromTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :tasks, :category
  end
end
