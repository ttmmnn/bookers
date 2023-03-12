class BooksController < ApplicationController
  def index
    @book =Book.all
  end

  def create
    @book =Book.new
    book =Book.new(book_params)
    book.save
    redirect_to '/books/[:id]' #showのviewにリダイレクト
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
