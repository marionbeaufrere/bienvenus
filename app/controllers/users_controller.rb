class UsersController < ApplicationController
  skip_after_action :verify_authorized ##comment out when you want to reintroduce Pundit policies
end
