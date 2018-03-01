class TasksController < ApplicationController
  before_action :update_user_access
  # :update_user_state
  def index
    @tasks = current_user.visible_tasks

    # raise
  end

  def completed_task
    @tasks.each do |task|
      if task.substasks.user_subtasks.count == task.subtasks.count
        task.status = "completed"
    end
  end
  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
  end

end
