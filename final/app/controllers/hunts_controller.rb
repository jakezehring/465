class HuntsController < ApplicationController
  def index
  end
  
  def requierments
  end
  
  def open
    @open = Hunt.all.map { |cur| cur if cur.user_id == nil }
    @closed = Hunt.all.map { |cur| cur if cur.user != nil }.compact!
  end

  def create
    @hunt = Hunt.new(params.require(:hunt).permit(:start))
    if @hunt.save
      redirect_to "/admin/hunt", notice: "Hunt created"
    else
      redirect_to "/admin/hunt", notice: "Hunt not created"
    end
  end

  def destroy
    @hunt = Hunt.new(params.require(:hunt).permit(:id))
    @hunt.destroy
    redirect_to "/admin/hunt", notice: "Hunt deleted"
  end
end
