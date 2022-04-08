class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)

    if @comment.save
      flash.notice = "Alles gut"
      redirect_to post_path(@post)
    else
      flash.notice = "Alles nicht gut"
      redirect_to post_path(@post)
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])

    if @comment.destroy
      flash.notice = "Alles gut"
      redirect_to post_path(@post)
    else
      flash.notice = "Alles nicht gut"
      redirect_to post_path(@post)
    end
  end

private

  def comment_params
    params.require(:comment).permit(
      :text,
      :email
    )
  end
end
