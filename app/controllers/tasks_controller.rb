class TasksController < ApplicationController

#########################################################################
  skip_before_action :authenticate_user!, only: [:show, :index, :completed_task]
  skip_after_action :verify_authorized, only: [:show, :index, :completed_task]
  skip_after_action :verify_policy_scoped, only: [:show, :index, :completed_task]
#########################################################################

  def index
    current_user.update_user_access
    @tasks = current_user.visible_tasks
  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @user_subtask = UserSubtask.new
  end
end
