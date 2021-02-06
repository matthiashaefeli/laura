class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      # TODO: check this out where to redirect
      redirect_to comments_path
    else
      # TODO: check this out where to redirect
      render 'new'
    end
  end
end
