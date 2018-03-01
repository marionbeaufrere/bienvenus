class TasksController < ApplicationController
  # before_action :update_user_state
  skip_after_action :verify_policy_scoped, only: [:show, :index]
  def index
    # @tasks = Task.all
    @tasks = current_user.visible_tasks
    # raise
  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @user_subtask = UserSubtask.new
  end

end
