class CommentsController < ApplicationController
  before_action :find_comment, only: [:show, :update, :destroy]

  def index
    @comments = Comment.all
    # options = {
    #         include: [:user, :restaurant]
    #     }
    render json: CommentSerializer.new(@comments)
  end

  def show
    options = {
            include: [:user, :restaurant]
        }
    render json: CommentSerializer.new(@comment, options)
  end

  def create
    @comment = Comment.create(comment_params)
    render json: CommentSerializer.new(@comment)
  end

  def update
    @comment.update(comment_params)
    render json: CommentSerializer.new(@comment)
  end

  def destroy
    @comment.delete
  end

  private

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:input, :user_id, :restaurant_id)
  end

end
