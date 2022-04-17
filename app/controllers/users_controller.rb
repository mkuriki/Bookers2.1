class UsersController < ApplicationController
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def edit
  end

  def show
    @user =　User.find(params[:id])
    @post_images = @user.post_images
    @book = Book.find(params[:id])
  end
  

end
