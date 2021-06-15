class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end

  def index
    #@user = User.find(params[:id])
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def book_params
    params.permit(:title, :body,:image)
  end

end
