class LikesController < ApplicationController
    
    def likes_toggle
        like = Like.find_by(user_id: current_user.id, honey_id: params[:id])
        
        if like.nil?
            Like.create(user_id: current_user.id, honey_id: params[:id])
         
        else
            like.destroy
        end
        
        redirect_to "/honey/index"
    end
end
