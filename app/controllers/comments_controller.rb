class CommentsController < ApplicationController
    
    def create
        @thre = Thre.find(params[:thre_id])
        @comment = Comment.new(params_comment)
        @comment.thre = @thre
        
        if @comment.save
            redirect_to thre_url(@thre)
        else
            render "thres/show"
        end
    end
    
    def destroy
        @thre = Thre.find(params[:thre_id])
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to thre_url(@thre)
    end
    
    private
    
    def params_comment
        params.require(:comment).permit(:name, :content)
    end
    
end
