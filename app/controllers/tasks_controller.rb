class TasksController < ApplicationController

# ######### DELETE THIS ONCE PUNDIT HAS BEEN IMPLEMENTED ###################
#   skip_before_action :authenticate_user!, only: [:show, :index, :completed_task, :initializer, :update]
#   skip_after_action :verify_authorized, only: [:show, :index, :completed_task, :initializer, :update]
#   skip_after_action :verify_policy_scoped, only: [:show, :index, :completed_task, :initializer, :update]
# #########################################################################

  def initializer
    @tasks = Task.where(position: 1..2).order('position ASC, id DESC')
    authorize :task
  end

  def index
    @tasks = policy_scope(Task)
    current_user.update_user_access
    @tasks = current_user.visible_tasks
    @tasks_completed = []
    @tasks_in_progress = []
    @tasks.each do |task|
      if task.completed?(current_user)
        @tasks_completed << task
      else
        @tasks_in_progress << task
      end
    end

  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @user_subtask = UserSubtask.new
    authorize @task
  end

  def complete_subtasks
    @task = Task.find(params[:id])
    authorize @task
    @task.subtasks.each do |subtask|
      @user_subtask = UserSubtask.new
      @user_subtask.user = current_user
      @user_subtask.subtask_id = subtask.id
      @user_subtask.save
    end
    redirect_to initialize_path
  end

end
