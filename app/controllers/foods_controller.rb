class FoodsController < ApplicationController
  def index
    @foods = Food.all.order("created_at DESC").page(params[:page])
    # @foods = Food.page(params[:page])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private
  
  def food_params
    params.require(:food).permit(:store, :genre_id, :content, :image).merge(user_id: current_user.id)
  end
  
end
