class FoodsController < ApplicationController
  def index
    @foods = Food.all.order("created_at DESC")
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
    @food = Food.find(params[:id])
    @like = Like.new
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to root_path
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    if @food.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  
  def food_params
    params.require(:food).permit(:store, :genre_id, :content, :image).merge(user_id: current_user.id)
  end
  
end
