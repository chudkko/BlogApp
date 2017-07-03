class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    comment = @post.comments.new(comment_params)
    if !comment.save 
     render comment.errors.full_messages
    end   

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:author_id, :content)
  end
end
