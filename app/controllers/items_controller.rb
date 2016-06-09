class ItemsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    @item = @user.item.build 

    if @item.save
      flash[:notice] = "You added an item"
    else
      flash[:alert] = "Was not able to add item. Please try again."
    end
    redirect_to user_path(@user)
  end

end