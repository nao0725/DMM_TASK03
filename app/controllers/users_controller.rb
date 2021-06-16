class UsersController < ApplicationController
  
  def index
    # @user = User.find(params[:id])
    @book = Book.new
  end

  def show
    @book = Book.new
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:profile_image_id, :name)
  end
end

