class UserSubtasksController < ApplicationController

#########################################################################
  skip_before_action :authenticate_user!, only: [:show, :index, :new, :create, :destroy]
  skip_after_action :verify_authorized, only: [:show, :index, :new, :create, :destroy]
  skip_after_action :verify_policy_scoped, only: [:show, :index, :new, :create, :destroy]
#########################################################################

def new
  @user_subtask = UserSubtask.new

end

def create
  @user_subtask = UserSubtask.new(user_subtask_params)
  @user_subtask.user = current_user
  @user_subtask.save
  @subtask = @user_subtask.subtask
  @subtask_id = @user_subtask.subtask_id
  respond_to do |format|
    format.html { redirect_to task_path(@user_subtask.subtask.task) }
    format.js  # <-- will render `app/views/user_subtask/create.js.erb`
  end
end

def destroy
  @user_subtask = UserSubtask.find(params[:id])
  task = @user_subtask.subtask.task
  @subtask = @user_subtask.subtask
  @subtask_id = @user_subtask.subtask_id
  @user_subtask.destroy
    respond_to do |format|
      format.html { redirect_to task_path(task) }
      format.js  # <-- will render `app/views/user_subtask/destroy.js.erb`
    end
end

private

def user_subtask_params
params.require(:user_subtask).permit(:subtask_id)
end

end
