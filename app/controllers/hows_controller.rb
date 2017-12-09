class HowsController < ApplicationController
    
    # Create
    def create
        @how = Comment.new
        @how.comment = params[:input_comment]
        @how.post_id = params[:id]
        @how.save
        redirect_to "/one_post/#{params[:id]}"
        
    end
    
    # Destroy 
    def destroy 
        
    end
    
end
