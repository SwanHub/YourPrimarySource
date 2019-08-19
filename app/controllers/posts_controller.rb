class PostsController < ApplicationController

  def index
      @posts = Post.all
  end

  def show
      @post = Post.find(params[:id])
  end

  def new
      @post = Post.new
      @policy = Policy.find(params[:policy][:id])
  end

  def create
    @post = Post.new(policy_id: params[:policy][:id], title: params[:post][:title], content: params[:post][:content], user_id: current_user.id)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end


end
