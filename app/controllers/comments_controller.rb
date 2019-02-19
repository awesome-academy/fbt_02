class CommentsController < ApplicationController
  before_action :load_comment, only: :destroy

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

  def destroy
    if @comment.destroy
      flash[:success] = t "comment.delete"
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

  def load_comment
    @comment = Comment.find_by id: params[:id]
    return if @comment
    flash[:danger] = t "messenger.no_data"
    redirect_to tour_path @comment.tour_id
  end
end
