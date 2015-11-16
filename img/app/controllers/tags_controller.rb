class TagsController < ApplicationController

  def create
    @image = Image.find params[:image_id]
    @tag = @image.tags.new(params.require(:tag).permit(:str))
    if @tag.save
      redirect_to image_url(@image), notice: "Tag saved"
    else
      redirect_to image_url(@image), notice: "Tag not saved"
    end
  end
  
  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update(params.require(:tag).permit(:str))
      redirect_to image_url(@tag.image)
    else
      redirect_to image_url(@tag.image), notice: "Tag update failed"
    end
  end

   def destroy
     @tag = Tag.find(params[:id])
     @tag.destroy
     redirect_to image_url(@tag.image)
   end
end
