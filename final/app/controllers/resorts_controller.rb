class ResortsController < ApplicationController
  def info
  end

  def activities
  end
  
  def reqierments
  end

  def open
    @open = Resort.all.map { |cur| cur if cur.user == nil }
    @closed = Resort.all.map { |cur| cur if cur.user != nil }
  end
end
