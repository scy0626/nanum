# 호반우 장터


class MarketController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @market = Market.all.reverse
  end

  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])

    @market = Market.new
    @market.item = params[:input_item]
    @market.unit = params[:input_unit]
    @market.price = params[:input_price]
   # @market.num = params[:input_num]
    @market.done = params[:input_done]
    @market.content = params[:input_content]
    @market.contact = params[:input_contact]
    @market.contactID = params[:input_contactID]
    @market.user_id = current_user.id
    @market.image = uploader.url
    @market.save
    
    redirect_to "/market/index"
  end

  def destroy
    @market = Market.find(params[:id])
    if current_user.id == @market.user.id
    @market.destroy
      redirect_to "/market/index"
    else
      redirect_to "/market/index"
    end
    
  end

  def edit
    @market = Market.find(params[:id])
  end


  def show
    @market = Market.find(params[:id])
  end

  def update
    @market = Market.find(params[:id])
    @market.item = params[:input_item]
    @market.unit = params[:input_unit]
    @market.price = params[:input_price]
    @market.done = params[:input_done]
    @market.content = params[:input_content]
    @market.save
    
    redirect_to "/market/show/#{params[:id]}"
  end
  
  def find
    if params[:cate] == "1"
      @market = Market.where("title LIKE ?", "%#{params[:q]}%") # Post 안에 있는 colum 중 하나를 적고 q의 값을 원한다
    elsif params[:cate] == "2"
      @market = Market.where("content LIKE ?", "%#{params[:q]}%")
    elsif params[:cate] == "3"
      @market = Market.where("title  LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    elsif params[:cate] == "4"
      @market = Market.where("username LIKE ?", "%#{params[:q]}%").take.communities # take로 하나의 유저만 뽑고 그 유저는 포스트를 많이 가지고 있기 때문에 posts를 사용
    end
  end
end
