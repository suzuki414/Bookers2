class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user = User.edit
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
