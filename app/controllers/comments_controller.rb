class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to log_path(@comment.log)
    else
      @log = Log.find(params[:log_id])
      @comment = Comment.new
      @comments = @log.comments.includes(:user)
      render "logs/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, log_id: params[:log_id])
  end
end
