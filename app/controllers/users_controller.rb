class UsersController < ApplicationController

  def edit
  end

  def show
    @user =　User.find(params[])
    @post_images = @user.post_images
    
  end
  
  def index
  end

end
