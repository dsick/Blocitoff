class UsersController < ApplicationController

  def show
      @user = User.find(params[:id])
      @items = @user.user_items
      @item = Item.new
  end

end