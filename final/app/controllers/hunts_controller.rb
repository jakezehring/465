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
  
  def update
    @data = params.require(:hunt).permit(:id, :user_id, :people, :pheasent, :dove)
    @hunt = Hunt.find @data[:id]
    if @data[:pheasent] == 1
      @data[:pheasent] = true
    else
      @data[:pheasent] = false
    end
    if @data[:dove] == 1
      @data[:dove] = true
    else
      @data[:dove] = false
    end

    if @hunt.update(@data)
      redirect_to "/admin/hunt", notice: "Reservation reserved"
    else
      redirect_to "/admin/hunt", notice: "Hunt failed to update"
    end
  end
    

  def destroy
    @hunt = params.require(:hunt).permit(:id)
    @hunt = @hunt[:id]
    @shit = Hunt.find @hunt
    @shit.destroy
    redirect_to "/admin/hunt", notice: "Hunt deleted"
  end
end
