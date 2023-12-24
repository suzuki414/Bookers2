class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @user = current_user
  end
  
  def show
    @book = Book.find(params[:i])
  end
  
  def edit
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
