# 꿀템모음

class HoneyController < ApplicationController
  def index
    @honey = Honey.all.reverse
  end
  
  def new
   
  end
  
  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])

    @honey = Honey.new
    @honey.item = params[:input_item]
    @honey.image = uploader.url
    @honey.save
    
    redirect_to "/honey/index"
  end
  
  def destroy
    @honey = Honey.find(params[:id])
    if current_user.id == @honey.user.id
    @honey.destroy
      redirect_to "/honey/index"
    else
      redirect_to "/honey/index"
    end
  end
end
