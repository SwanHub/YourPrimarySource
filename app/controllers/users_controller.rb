class UsersController < ApplicationController

  def index
      @users = User.all
  end

  def show
      @user = User.find(params[:id])
  end

  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        flash[:message] = "User success create yahs!"
        redirect_to user_path(@user)
      else
        flash[:alert] = "The limit does not exist. but this username does. Try again."
        render :new
      end
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :password)
  end

end
