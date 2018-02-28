class UsersController < ApplicationController
  before_action :update_user_state
  # skip_after_action :verify_authorized ##comment out when you want to reintroduce Pundit policies

  def user_params
  params.require(:user).permit(:email, :first_name, :last_name, :photo)
end
end
