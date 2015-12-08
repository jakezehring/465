class AdminController < ApplicationController

  def hunt
    @hunt = Hunt.new
    @list = Hunt.all
  end

  def resort
  end

end
