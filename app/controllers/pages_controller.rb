class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :onboarding, :welcome_screen, :are_you, :asylum_seeker, :resources]

  ### COMMENT THIS LINE ONCE PUNDIT HAS BEEN IMPLEMENTED ###########
  skip_after_action :verify_authorized, only: [:home, :onboarding, :welcome_screen, :are_you, :asylum_seeker, :resources]

  def home
  end

  def onboarding
  end

  def welcome_screen
  end

  def are_you
  end

  def asylum_seeker
  end

  def resources
  end
end
