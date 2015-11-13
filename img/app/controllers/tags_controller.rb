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

end
