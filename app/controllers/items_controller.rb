class ItemsController < ApplicationController
  
  def new
    @item = Item.new
  end

  def create
    @user = current_user
    @item = current_user.items.build(item_params)
    @items = @user.items
    @item.user = @user
    @new_item = Item.new

    if @item.save
      flash[:notice] = "Item was added."
      redirect_to [@user]
    else
      flash[:error] = "There was an error saving the item. Please try again."
      render 'user/show'
    end
  end

  def item_params
    params.require(:item).permit(:name, :user_id)
  end 
end
