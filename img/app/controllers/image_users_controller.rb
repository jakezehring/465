class ImageUsersController < ApplicationController

  def create
    @image = Image.find params[:image_id]
    @user_image = @image.image_users.new(params.require(:image_user).permit(:user_id))
    if @user_image.save
      redirect_to image_url(@image), notice: "Access granted"
    else
      redirect_to image_url(@image), notice: "Access not granted"
    end
  end
  
   def destroy
     @imageuser = ImageUser.find(params[:id])
     @imageuser.destroy
     redirect_to image_url(@imageuser.image)
   end
end
