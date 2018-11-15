class BorrowreController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
    
    def create
        @reply = Borrowre.new
        @reply.content = params[:content]
        @reply.borrow_id = params[:borrow_id]
        @reply.user_id = current_user.id
        
        @reply.save
        
        redirect_to :back
    end
    
    def destroy
        @reply = Borrowre.find(params[:id])
        
        if current_user.id == @reply.user.id
            @reply.destroy
            
            redirect_to :back
        else
            redirect_to "/borrow/index"
        end
    end
end
