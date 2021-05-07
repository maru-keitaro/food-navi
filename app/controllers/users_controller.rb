class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @name = @user.name
    @foods = @user.foods
  end
end
