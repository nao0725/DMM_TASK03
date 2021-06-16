class UsersController < ApplicationController

  def show
    @book = Book.new
    @user = current_user
  end

  def edit
  end

  def index
    # @user = User.find(params[:id])
    @book = Book.new
  end
  
  private

  def user_params
    params.require(:user).permit(:profile_image_id, :name)
  end
end

