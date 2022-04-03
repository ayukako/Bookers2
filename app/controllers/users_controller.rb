class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    @user.update
    redirect_to users_show_path
  end


  private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
