class UserSubtasksController < ApplicationController

# ################# DELETE THIS ONCE PUNDIT HAS BEEN IMPLEMENTED ###############
#   skip_before_action :authenticate_user!, only: [:show, :index, :new, :create, :destroy]
#   skip_after_action :verify_authorized, only: [:show, :index, :new, :create, :destroy]
#   skip_after_action :verify_policy_scoped, only: [:show, :index, :new, :create, :destroy]
# #########################################################################

  def new
    @user_subtask = UserSubtask.new
    authorize @user_subtask
  end

  def create
    @user_subtask = UserSubtask.new(user_subtask_params)
    @user_subtask.user = current_user
    authorize @user_subtask
    @user_subtask.save
    @subtask = @user_subtask.subtask
    @subtask_id = @user_subtask.subtask_id
    @task = @user_subtask.subtask.task
    respond_to do |format|
      format.html { redirect_to task_path(@user_subtask.subtask.task) }
      format.js
    end
  end

  def destroy
    @user_subtask = UserSubtask.find(params[:id])
    @task = @user_subtask.subtask.task
    @subtask = @user_subtask.subtask
    @subtask_id = @user_subtask.subtask_id
    authorize @user_subtask
    @user_subtask.destroy
    respond_to do |format|
      format.html { redirect_to task_path(@task) }
      format.js { render :create }
    end
  end

  private

  def user_subtask_params
    params.require(:user_subtask).permit(:subtask_id)
  end

  #   def check_task_status
  #     @task = @user_subtask.subtask.task
  #     @subtask = @user_subtask.subtask
  #     if @task.subtasks.count <= @task.user_subtasks.count
  #       @task.status = "completed"
  #       @task.save!
  #     else @task.subtasks.count > @task.user_subtasks.count
  #       @task.status = "in progress"
  #       @task.save!
  #     end
  # end
end
