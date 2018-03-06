class Admin::SubtasksController < ApplicationController
  # ### DELETE THIS ONCE PUNDIT HAS BEEN IMPLEMENTED ###############
  skip_after_action :verify_authorized, only: [:new, :create, :edit, :update]
  skip_after_action :verify_policy_scoped, only: [:new, :create, :edit, :update]
#   ##################################################################

  def create

    # params[:subtask]
    @task = Task.find(params[:task_id])
    @subtask = Subtask.new(subtask_params)
    @subtask.task = @task
    @subtask.save
    redirect_to admin_task_path(@task)

  end



private
  def subtask_params
    params.require(:subtask).permit(:title, :description)
  end

end
