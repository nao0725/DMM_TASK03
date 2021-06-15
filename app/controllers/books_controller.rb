class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    @book.save
    redirect_to books_path
  end

  def index
   @books = Book.all
   @user = current_user
   @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def edit
    @book = Book.find(params[:id])
  end

   def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
   end


  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
