class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end

  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end

  def index
    @user = current_user.id
    @books = @user.books 
    @book = Book.new

  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to action: :show
  end
  
    # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
