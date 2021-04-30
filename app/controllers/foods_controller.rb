class FoodsController < ApplicationController
  def index
  end

  def new
    @food = Food.new
  end

  def create
  end

  private
  
  def food_params
    params.require(:food).permit(:store_name, :content, :image).merge(user_id: current_user.id)
  end
  
end
