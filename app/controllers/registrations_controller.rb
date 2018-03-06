class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # @user = current_user
    if @user.user_type == "refugee"
      :initialize
    else
      user_path(@user)
    end
  end
end




