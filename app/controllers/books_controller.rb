class BooksController < ApplicationController
  before_action :authenticate_user!

  def create
    @book = Book.new
    
  end

  def show
    @user = current_user.id
  end

  def index
    @books = Book.all
  end
end
