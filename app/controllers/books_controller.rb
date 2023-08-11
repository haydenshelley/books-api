class BooksController < ApplicationController
  def index
    @books = Book.all
    render :index
  end

  def create
    @book = Book.new(
      title: params[:title],
      price: params[:price],
      availability: params[:availability]
    )
    @book.save
    render :show
  end

  def show
    @book = Book.find_by(id: params[:id])
    render :show
  end
end
