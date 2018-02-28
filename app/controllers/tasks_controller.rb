class TasksController < ApplicationController
  before_action :update_user_state
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
  end

end
