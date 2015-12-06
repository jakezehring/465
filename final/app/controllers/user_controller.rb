class UserController < ApplicationController
  def index
    @hunts = current_user.hunts
    @resorts = current_user.resorts
  end
end
