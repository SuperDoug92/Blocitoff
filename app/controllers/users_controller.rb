class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @items = @user.items
  end

  def new
  end

  def edit
  end

  def destroy
  end
end
