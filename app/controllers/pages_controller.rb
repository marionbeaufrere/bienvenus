class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @categories = ["statut","carte de séjour","état civil","langue française","aides financières","banque","logement/domiciliation","emploi","santé","mobilité","unité familiale","naturalisation"]
  end
end
