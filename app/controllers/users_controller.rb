class UsersController < ApplicationController
  skip_after_action :verify_authorized ##comment out when you want to reintroduce Pundit policies
  def show
    @user = current_user
    authorize @user
  end


  def update
  @user = current_user
  authorize @user
    if current_user.update(user_params)
       redirect_to user_path(@user)
    else
      render :show
    end
  end

  private

  def user_params
  params.require(:user).permit(:email, :first_name, :last_name, :photo, :phone_number)
  end
end
