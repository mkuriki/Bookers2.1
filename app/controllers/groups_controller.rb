class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]
  
  def index
      @books = Book.all
      @groups = Group.all
  end
  
  def show
      @group = Group.find(params[:id])
  end
  
  def create
      @group = Group.new(group_params) 
  end
  
  def destroy
      @group = Group.find(params[:id])
      @group.destroy
      redirect_to '/groups'
  end
  
  def update
      @group = Group.find(params[:id])
      @group.update
      redirect_to '/groups'
  end
  
  private
  
  def group_params
      params.require(:group).permit(:name, :introduction, :image) 
  end
  
  def ensure_correct_user
      @group = Group.find(params[:id])
      unless @group.owner_id == current_user.id
      redirect_to groups_path
  end

end
