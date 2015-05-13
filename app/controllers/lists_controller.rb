class ListsController < ApplicationController
  def index
  end

  def new
    @list = List.new
  end

  def show
  end

  def edit
  end

  def create
    @user = current_user
    @list = current_user.lists.build(list_params)
    @lists = @user.lists
    @list.user = @user
    @new_list = List.new

    if @list.save
      flash[:notice] = "List was added."
      redirect_to [@user]
    else
      flash[:error] = "There was an error saving the list. Please try again."
      render 'user/show'
    end
  end

  def list_params
    params.require(:list).permit(:name, :user_id)
  end 
end
