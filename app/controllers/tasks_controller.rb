class TasksController < ApplicationController

######### DELETE THIS ONCE PUNDIT HAS BEEN IMPLEMENTED ###################
  skip_before_action :authenticate_user!, only: [:show, :index, :completed_task, :initializer, :update]
  skip_after_action :verify_authorized, only: [:show, :index, :completed_task, :initializer, :update]
  skip_after_action :verify_policy_scoped, only: [:show, :index, :completed_task, :initializer, :update]
#########################################################################

  def initializer
    @tasks = Task.where(position: 1..2).order('position ASC, id DESC')
  end

  def index
    current_user.update_user_access
    @tasks = current_user.visible_tasks
  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @user_subtask = UserSubtask.new
  end

  def update
    @task = Task.find(params[:id])
    @task.status = "completed"
    @task.save
    redirect_to initialize_path
  end
end
