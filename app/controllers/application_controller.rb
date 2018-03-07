class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:welcome_screen, :onboarding, :are_you]
  before_action :get_crisp
  before_action :set_locale

  include Pundit

  #### DO NOT FORGET TO UNCOMMENT THE TWO LINES BELOW ONCE PUNDIT IS FULLY SET UP!!!!!!!!!!!!!!
  after_action :verify_authorized, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

 # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

def set_locale
  I18n.locale = params.fetch(:locale, I18n.default_locale).to_sym
end

def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :language, :photo, :user_type])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
end

def default_url_options
  {
    host: ENV["HOST"] || "localhost:3000",
    locale: I18n.locale == I18n.default_locale ? nil : I18n.locale
   }
end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def after_sign_in_path_for(resource)
    @user = current_user
    @user.user_type == "refugee" ? tasks_path : user_path(@user)
  end

  def get_crisp
    unless @crisp_client
      @crisp_client = Crisp::Client.new
      @crisp_client.authenticate(ENV['CRISP_IDENTIFIER'],ENV['CRISP_KEY'])
    end
  end
end
