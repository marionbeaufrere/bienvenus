class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    # @user = current_user
    if @user.user_type == "refugee"
      :initialize
    else
      @stuff = ""
      flash[:alert] = "Thanks a lot for signing up! You will receive an email with Crisp access any time soon 🤗"
      user_path(@user)
    end
  end
end


#### if you want to replace the flash alert with a JS alert, you can call @stuff in the users/show/view
#### <%= if @stuff %>
#### div id="trigger"
#### <% end %>
