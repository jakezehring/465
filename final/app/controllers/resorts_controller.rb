class ResortsController < ApplicationController
  def info
  end

  def activities
  end
  
  def reqierments
  end

  def open
    @open = Resort.all.map { |cur| cur if cur.user == nil }.compact!
    @closed = Resort.all.map { |cur| cur if cur.user != nil }.compact!
  end
end
