class UsersController < ApplicationController
  before_action :update_user_state
  skip_after_action :verify_authorized ##comment out when you want to reintroduce Pundit policies
end
