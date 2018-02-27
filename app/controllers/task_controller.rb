class TaskController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
  end

end
