class PagesController < ApplicationController
   
   #보여주는 컨트롤러 
    def new
        
    end
    
    #저장하는 컨트롤러 
    def create
        @page = Page.new
        @page.title = params[:input_title]
        @page.save
        redirect_to '/call_all'
    end
    
    def call_all
        @p = Page.all
        @how = How.where(post_id: params[:id])
    end
    
    def show_one
        @onepost = Page.find(params[:id])
    end

    def delete
        @deletethis = Page.find(params[:id])
        @deletethis.destroy
        redirect_to '/call_all'
    end
    
    def edit
        #action for editing
        @editing_post = Page.find(params[:id])
    end
    
    
    def update
        #action for saving
        @post = Page.find(params[:id])
        @post.title = params[:input_title]
        @post.save
        
        redirect_to '/call_all'
    end
    
    
end
