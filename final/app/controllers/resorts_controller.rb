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

  def create
    @resort = Resort.new(params.require(:resort).permit(:start))
    if @resort.save
      redirect_to "/admin/resort", notice: "resort created"
    else
      redirect_to "/admin/resort", notice: "resort creation failed"
    end
  end

  def update
    @data = params.require(:resort).permit(:id, :end, :user_id, :people)
    @resort = Resort.find @data[:id]
    
    if @resort.update(@data)
      redirect_to "/admin/resort", notice: "Resort reserved"
    else
      redirect_to "/admin/resort", notice: "Resort failed to update"
    end
  end

  def destory
    @data = params.require(:resort).permit(:id)
    @resort = Resort.find @data[:id]
    @resort.destroy
    redirect_to "/admin/resort", notice: "Resort deleted"
  end
end
