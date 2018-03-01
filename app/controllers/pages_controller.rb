class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :onboarding]

  ### COMMENT THIS LINE ONCE PUNDIT HAS BEEN IMPLEMENTED ###########
  skip_after_action :verify_authorized, only: [:home, :onboarding]

  def home
  end

  def onboarding
  end
end
