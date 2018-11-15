class CommunityreController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def create
        @reply = Communityre.new
        @reply.content = params[:content]
        @reply.community_id = params[:community_id]
        @reply.user_id = current_user.id
        
        @reply.save
        
        redirect_to :back
    end
    
    def destroy
        @reply = Communityre.find(params[:id])
        
        if current_user.id == @reply.user.id
            @reply.destroy
            
            redirect_to :back
        else
            redirect_to "/community/index"
        end
    end
end
