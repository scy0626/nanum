# 빌려쓰기

class BorrowController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @borrow = Borrow.all.reverse
  end

  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])
    
    @borrow = Borrow.new
    @borrow.item = params[:input_item]
    @borrow.period = params[:input_period]
    @borrow.price = params[:input_price]
    @borrow.done = params[:input_done]
    @borrow.content = params[:input_content]
    @borrow.contact = params[:input_contact]
    @borrow.contactID = params[:input_contactID]
    @borrow.image = uploader.url
    @borrow.user = current_user
    @borrow.save
    
    redirect_to "/borrow/index"
  end

  def destroy
    @borrow = Borrow.find(params[:id])
    
    if current_user.id == @borrow.user.id
      @borrow.destroy
      
      redirect_to "/borrow/index"
    else
      redirect_to "/borrow/index"
    end
  end

  def edit
    @borrow = Borrow.find(params[:id])
  end

  def new
  end

  def show
    @borrow = Borrow.find(params[:id])
  end

  def update
    @borrow = Borrow.find(params[:id])
    @borrow.item = params[:input_item]
    @borrow.period = params[:period]
    @borrow.price = params[:price]
    @borrow.done = params[:done]
    @borrow.content = params[:input_content]
    
    @borrow.save
    
    redirect_to "/borrow/show/#{params[:id]}"
  end
  
  def find
    if params[:cate] == "1"
      @borrow = Borrow.where("item LIKE ?", "%#{params[:q]}%") # Post 안에 있는 colum 중 하나를 적고 q의 값을 원한다
    elsif params[:cate] == "2"
      @borrow = Borrow.where("content LIKE ?", "%#{params[:q]}%")
    elsif params[:cate] == "3"
      @borrow = Borrow.where("item  LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    elsif params[:cate] == "4"
      @borrow = User.where("username LIKE ?", "%#{params[:q]}%").take.borrows # take로 하나의 유저만 뽑고 그 유저는 포스트를 많이 가지고 있기 때문에 posts를 사용
    end
  end
end
