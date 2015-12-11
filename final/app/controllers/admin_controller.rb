class AdminController < ApplicationController

  def hunt
    @users = User.all
    @hunt = Hunt.new
    @list = Hunt.all
  end

  def resort
    @users = User.all
    @resort = Resort.new
    @list = Resort.all
  end

end
