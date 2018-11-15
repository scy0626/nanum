# 커뮤니티

class CommunityController < ApplicationController
  def index
    @community = Community.all.reverse
  end

  def create
    @community = Community.new
    @community.head = params[:input_head]
    @community.item = params[:input_item]
    @community.content = params[:input_content]
    # @community.contact = params[:input_contact]
    # @community.contactID = params[:iputs_contactID]
    
    @community.user = current_user
    
    @community.save
    
    redirect_to "/community/index"
  end

  def destroy
    @community = Community.find(params[:id])
    
    if current_user.id == @community.user.id
      @community.destroy
      redirect_to "/community/index"
    else
      redirect_to "/community/index"
    end
  end

  def edit
    @community = Community.find(params[:id])
  end

  def new
  end

  def show
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    
    @community.title = params[:input_title]
    @community.content = params[:input_content]
    # @community.contact = params[:input_contact]
    # @community.contactID = params[:iputs_contactID]
    
    @community.save
    redirect_to "/community/index"
  end

  def search
    if(params[:search_head] == "전체보기")
      @community = Community.all
    else
      @community = Community.where("head LIKE ?", "#{params[:search_head]}")
    end
  end
  
  def find
    if params[:cate] == "1"
      @community = Community.where("item LIKE ?", "%#{params[:q]}%") # Post 안에 있는 colum 중 하나를 적고 q의 값을 원한다
    elsif params[:cate] == "2"
      @community = Community.where("content LIKE ?", "%#{params[:q]}%")
    elsif params[:cate] == "3"
      @community = Community.where("item  LIKE ? OR content LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    elsif params[:cate] == "4"
      @community = Community.where("username LIKE ?", "%#{params[:q]}%").take.communities # take로 하나의 유저만 뽑고 그 유저는 포스트를 많이 가지고 있기 때문에 posts를 사용
    end
  end
end
