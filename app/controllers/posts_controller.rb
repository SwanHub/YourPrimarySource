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

  def edit
      @post = Post.find(params[:post][:id])
  end

  def update
      @post = Post.find(params[:id])
      @post.update(post_params)
      redirect_to post_path(@post)
  end

  def destroy
    @policy = Policy.find(params[:policy][:id])
    @post = Post.find(params[:post][:id])
    @post.delete
    redirect_to policy_path(@policy)
  end

  private

  def post_params
      params.require(:post).permit(:title, :content, :user_id, :policy_id)
  end

end
