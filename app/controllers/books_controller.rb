class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.new
  end
  
  def create
    @book = Book.new(post_image_params)
    @book.user_id = current_user.id
    if @book.save
    redirect_to book_path
    else
      render :'users#index'
    end
  end

  def edit
  end
end
