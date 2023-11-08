class BooksController < ApplicationController
  def new
  end

  def create
    @book = Book.create
    book = Book.create(book_params)
    book.save
    redirect_to '/books/show'
  end

  def index
    @book = Book
  end

  def show
  end

  def edit
  end


  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end