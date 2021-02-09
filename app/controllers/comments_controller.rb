class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @book = Book.find(params[:comment][:book_id])
    if @comment.valid?
      @comment.save
      redirect_to book_path(@book)
    else
      render 'new'
    end
  end

  def new
    @book = Book.find(params[:book])
    @comment = Comment.new
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :book_id)
  end
end
