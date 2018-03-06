class Admin::TasksController < ApplicationController
# ### DELETE THIS ONCE PUNDIT HAS BEEN IMPLEMENTED ###############
  skip_after_action :verify_authorized, only: [:new, :create, :edit, :update]
  skip_after_action :verify_policy_scoped, only: [:new, :create, :edit, :update]
#   ##################################################################
  def show
    @task = Task.find(params[:id])
    @subtasks = @task.subtasks
    @subtask = Subtask.new
  end

  def new
    @task = Task.new
    @task.subtasks.build
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to admin_task_path(@task)

  end

  def edit

  end

  def update

  end


  private

  def task_params
      params.require(:task).permit(:category_id, :title, :description, subtasks_attributes: [:title, :description])
  end

  # def subtask_params
  #     params.require(:subtasks).permit(:title, :description)
  # end

  # def category_params
  #     params.require(:category).permit(:name, :color)
  # end
end
