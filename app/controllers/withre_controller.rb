class WithreController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def create
        @reply = Withre.new
        @reply.content = params[:content]
        @reply.with_id = params[:with_id]
        @reply.user_id = current_user.id
        
        @reply.save
        
        redirect_to :back
    end
    
    def destroy
        @reply = Withre.find(params[:id])
        
        if current_user.id == @reply.user.id
            @reply.destroy
            
            redirect_to :back
        else
            redirect_to "/with/index"
        end
    end
end
