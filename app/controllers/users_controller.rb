class UsersController < ApplicationController

  def edit
  end

  def show
    @user =　User.find(params[:id])
    @post_images = @user.post_images
    
  end
  
  def index
    @user = current_user.id
    @books = @user.books 
    @book = Book.new
  end

end
