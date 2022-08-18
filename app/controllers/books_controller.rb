class BooksController < ApplicationController
  def new

  end

  def index
    @books= Book.all
  end

  def create
    @book= Book.new(book_params)
    if @book.save
    redirect_to book_path(@Book.id)
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:id).permit(:title,:body)
  end

end
