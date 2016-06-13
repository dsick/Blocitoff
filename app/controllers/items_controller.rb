class ItemsController < ApplicationController
  before_action :authenticate_user!

  
  def create
    @user = User.find(params[:user_id])
    #@item = @user.items.build(name: params[:item][:name])
    @item = @user.items.build( params.require(:item).permit(:name) )

    if @item.save
      flash[:notice] = "You added an item"
    else
      flash[:alert] = "Was not able to add item. Please try again."
    end
    redirect_to user_path(@user)
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])

    if @item.destroy
      flash[:notice] = "You deleted an item"
    else
      flash[:alert] = "Was not able to delete item. Please try again."
    end
    redirect_to user_path(@user)
  end

end