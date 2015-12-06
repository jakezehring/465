class HuntsController < ApplicationController
  def index
  end
  
  def requierments
  end
  
  def open
    @open = Hunt.all.map { |cur| cur if cur.user_id == nil }
    @closed = Hunt.all.map { |cur| cur if cur.user != nil }.compact!
  end
end
