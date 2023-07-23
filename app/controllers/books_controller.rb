class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @books = Book.new(book_params)
    @books.user_id = current_user.id
    if @books.save
    redirect_to books_path
    else
      render :'books/show'
    end
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
