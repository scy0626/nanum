class HomeController < ApplicationController
  def index
    @with = With.all.reverse
    @borrow = Borrow.all.reverse
    @market = Market.all.reverse
  end
  
  def search
    @post = Borrow.where("item LIKE ?", "%#{params[:q]}%")
    @post = @post + Community.where("item Like ?", "%#{params[:q]}%")
    @post = @post + Market.where("item Like ?", "%#{params[:q]}%")
    @post = @post + With.where("item Like ?", "%#{params[:q]}%")
  end
  
end
