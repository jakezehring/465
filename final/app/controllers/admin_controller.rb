class AdminController < ApplicationController

  def hunt
    @users = User.all
    @hunt = Hunt.new
    @list = Hunt.all
  end

  def resort
  end

end
