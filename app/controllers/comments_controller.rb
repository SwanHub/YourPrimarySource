class CommentsController < ApplicationController

  def new
      @post = Post.find(params[:post][:id])
      @user = User.find(@post.user_id)
      @comment = Comment.new
  end

  def create
      original_post = Post.find(params[:post][:id])
      original_post_policy = original_post.policy_id

      new_comment = Post.create(user_id: current_user.id, policy_id: original_post_policy, title: params[:comment][:title], content: params[:comment][:content])

      original_post.commenters << new_comment
      redirect_to policy_path(original_post.policy)
  end

end
