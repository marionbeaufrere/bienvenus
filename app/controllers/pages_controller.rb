class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def welcome1
  end

  def welcome2
  end

  def welcome3
  end

  def onboarding
  end
end
