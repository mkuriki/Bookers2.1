class UsersController < ApplicationController
  
  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
    @new_book = Book.new
  end
  
  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = "User was successfully updated."
    else
      render :edit
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :introduction)
  end
end
