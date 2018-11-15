class MarketreController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def create
        @reply = Createre.new
        @reply.content = params[:content]
        @reply.create_id = params[:create_id]
        @reply.user_id = current_user.id
        
        @reply.save
        
        redirect_to :back
    end
    
    def destroy
        @reply = Createre.find(params[:id])
        
        if current_user.id == @reply.user.id
            @reply.destroy
            
            redirect_to :back
        else
            redirect_to "/market/index"
        end
    end
end
