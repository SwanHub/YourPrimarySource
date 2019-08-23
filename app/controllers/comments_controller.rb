class CommentsController < ApplicationController

  def new
      byebug
      @post = Post.find(params[:post][:id])
      @user = User.find(@post.user_id)
      @comment = Comment.new
  end

  def create
      byebug
      Post.create()
  end

end
