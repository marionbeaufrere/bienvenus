class TasksController < ApplicationController

#########################################################################
  skip_before_action :authenticate_user!, only: [:show, :index, :completed_task]
  skip_after_action :verify_authorized, only: [:show, :index, :completed_task]
  skip_after_action :verify_policy_scoped, only: [:show, :index, :completed_task]
#########################################################################

  #before_action :update_user_access
  # before_action :completed_task
  def index
    @tasks = current_user.visible_tasks

    #CHECKING FOR COMPLETED TASKS
    @tasks.each do |task|
      if task.subtasks.user_subtasks.count == task.subtasks.count
        task.status = "completed"
      else
        task.status = "in progress"
      end
    end

  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @user_subtask = UserSubtask.new
  end
end
