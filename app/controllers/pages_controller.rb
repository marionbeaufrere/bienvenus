class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :onboarding, :onboarding2]

  ### COMMENT THIS LINE ONCE PUNDIT HAS BEEN IMPLEMENTED ###########
  skip_after_action :verify_authorized, only: [:home, :onboarding, :onboarding2]

  def home
  end

  def onboarding
  end

  def onboarding2
  end
end
