class PagesController < ApplicationController
  ### COMMENT THIS LINE ONCE PUNDIT HAS BEEN IMPLEMENTED ###########
  # skip_before_action :authenticate_user!, only: [:home, :onboarding, :welcome_screen, :are_you, :asylum_seeker, :resources, :dashboard]
  # skip_after_action :verify_authorized, only: [:home, :onboarding, :welcome_screen, :are_you, :asylum_seeker, :resources, :dashboard]

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

  def dashboard
    @crisp_users = @crisp_client.website.list_people_profiles("697c7692-c8e1-46a8-b080-94bc635691cb",1)
    @crisp_conversations = @crisp_client.website.list_conversations("697c7692-c8e1-46a8-b080-94bc635691cb", 1)
  end
end
