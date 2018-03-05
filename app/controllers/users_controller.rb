class UsersController < ApplicationController
  # skip_after_action :verify_authorized ##comment out when you want to reintroduce Pundit policies
  def show
    @user = current_user
  authorize @user
  end

  def edit
  @user = current_user
  authorize @user
  end

  def update
  @user = current_user
  authorize @user
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def user_params
  params.require(:user).permit(:email, :first_name, :last_name, :photo)
  end

  def crisp_push
    $crisp.push(["set", "user:email", current_user.email]);
    website_id = "6497e4a4-b17c-41e0-bfea-eea97ba8115a"
    session_id = "session_f32bc993-f7ce-41af-bcd1-110fc147a392"
    @crisp_client.website.send_message_in_conversation(
      website_id, session_id,
      {
        "type" => "text",
        "content" => "This message was sent from python-crisp-api! :)",
        "from" => "operator",
        "origin" => "chat"
      }
    )
  end
end
