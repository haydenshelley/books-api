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

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
      title: params[:title] || @book.title,
      price: params[:price] || @book.price,
      availability: params[:availability] || @book.availability
    )
    render :show
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render json: {message: "book deleted"}
  end
end
