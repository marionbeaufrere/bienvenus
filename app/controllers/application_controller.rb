class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  include Pundit

  #### DO NOT FORGET TO UNCOMMENT THE TWO LINES BELOW ONCE PUNDIT IS FULLY SET UP!!!!!!!!!!!!!!
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

 # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :language])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
  # def after_sign_in_path_for(resource)
  #   user_path(resource)
  # end

  def update_user_state
    case current_user.aasm_state
      when "state_zero"
        needed_task = Task.find_by(title: "Obtain a residence permit")
          if needed_task.status == true
          current_user.run
          current_user.save
          end
        # when "state_first"
        #   result = needed_tasks.map do |task|
        #   task.status == true ? 0 : 1
        # end.reduce(:+)
        # # result = needed_subtasks.map { |nst| nst.status == true ? 0 : 1 }.reduce(:+)
        # unless result # on veut que result = 0 ce qui veut dire que toutes les taches sont completed
        #   current_user.run
        #   current_user.save
        # end
    end
  end
end
