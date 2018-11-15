# 같이먹기

class WithController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @with = With.all.reverse
  end

  def create
    uploader = ImageUploader.new
    uploader.store!(params[:image])

    @with = With.new
    
    @with.item = params[:input_item]
    @with.price = params[:input_price]
    @with.deadline = params[:input_deadline]
    @with.deadlineH = params[:input_deadlineH]
    @with.deadlineM = params[:input_deadlineM]
    @with.num = params[:input_num]
    @with.remain = 0
    @with.done = params[:input_done]
    @with.content = params[:input_content]
    @with.contact = params[:input_contact]
    @with.contactID = params[:input_contactID]
    
    @with.user = current_user
    @with.image = uploader.url
    @with.save
    redirect_to "/with/index"
  end

  def destroy
    @with = With.find(params[:id])
    
    if current_user.id == @with.user.id
      @with.destroy
      redirect_to "/with/index"
    else
      redirect_to "/with/index"
    end
  end

  def edit
    @with = With.find(params[:id])
  end

  def new
  end

  def show
    @with = With.find(params[:id])
  end

  def update
    @with = With.find(params[:id])
    
    @with.item = params[:input_item]
    @with.price = params[:input_price]
    @with.deadline = params[:input_deadline]
    @with.deadlineH = params[:input_deadlinH]
    @with.deadlineM = params[:input_deadlinM]
    @with.num = params[:input_num]
    @with.done = params[:input_done]
    @with.content = params[:input_content]
    @with.contact = params[:input_contact]
    @with.contactID = params[:input_contactID]
    
    @with.save
    redirect_to "/with/show/#{params[:id]}"
  end
  
  def find
    if params[:cate] == "1"
      @with = With.where("item LIKE ?", "%#{params[:q]}%") # Post 안에 있는 colum 중 하나를 적고 q의 값을 원한다
    elsif params[:cate] == "2"
      @with = With.where("content LIKE ?", "%#{params[:q]}%")
    elsif params[:cate] == "3"
      @with = With.where("item  LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    elsif params[:cate] == "4"
      @with = With.where("username LIKE ?", "%#{params[:q]}%").take.withs # take로 하나의 유저만 뽑고 그 유저는 포스트를 많이 가지고 있기 때문에 posts를 사용
    end
  end
  
end
