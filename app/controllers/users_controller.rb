class UsersController < ApplicationController

  def index
    @user = current_user
    @users = User.all
    @book = Book.new
  end

  def show
    @book = Book.new
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    # flash[:notice] = "You have updated user successfully."
     redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.permit(:profile_image_id, :name)
  end
end

