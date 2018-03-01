class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :onboarding, :welcome_screen]

  ### COMMENT THIS LINE ONCE PUNDIT HAS BEEN IMPLEMENTED ###########
  skip_after_action :verify_authorized, only: [:home, :onboarding, :welcome_screen]

  def home
  end

  def onboarding
  end

  def welcome_screen
  end
end
