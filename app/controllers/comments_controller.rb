class CommentsController < ApplicationController

def create
  @comment = Comment.new(comment_params)
  @post = Post.find(params[:post_id])
  @comment.user = current_user
  #authorize @comment
  if @comment.save
    redirect_to @comment, notice: "Comment was saved successfully!"
  else
     flash[:error] = "Error creating Comment. Please try again."
     render :new
   end
end


private

def comment_params
  params.require(:comment).permit(:body) 
end

end
