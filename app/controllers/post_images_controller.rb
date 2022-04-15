class PostImagesController < ApplicationController
  def new
  end

  def create
    @post_image = PostImage.new(post_image_params)
    @post_image.user_id = current_user.id
    @post_image.save
    redirect_to post_images_path
  end

  def show
  end

  def index
    @books = Book.all 
    @user = current_user.id
  end
  
  # 投稿データのストロングパラメータ
  private

  def post_image_params
    params.require(:post_image).permit(:user_id)
  end
end
