class BooksController < ApplicationController
  def new

  end

  def index
    @books= Book.all
    @book= Book.new
  end

  def create
    @book= Book.new(book_params)
    book.save
    redirect_to '/books/:book_id'
  end

  def show
    @book = Book.find(params[:book_id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book_id).permit(:title,:body)
  end

end
