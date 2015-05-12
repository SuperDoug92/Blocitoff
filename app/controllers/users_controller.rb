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
    begin
      user = User.find(params[:id])
      user.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end
end
