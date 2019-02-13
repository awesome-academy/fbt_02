class CommentsController < ApplicationController
  def create
    @comment = Comment.new comment_params
    if @comment.save
      flash[:success] = t "comment.successful"
      redirect_to tour_path @comment.tour_id
    else
      flash[:danger] = t "comment.fails"
      redirect_to tour_path @comment.tour_id
    end
  end

  private

  def comment_params
    params.require(:comment).permit :content, :user_id, :tour_id
  end
end
