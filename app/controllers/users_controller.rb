class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice] = "You have updated user successfully"
    redirect_to user_path(current_user)
  end

  def index
    @users = User.all
    @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
