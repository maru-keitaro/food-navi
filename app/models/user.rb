class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :foods
  has_many :likes
  has_many :liked_foods, through: :likes, source: :post # liked_foodsによってuserがどの投稿をいいねしているのかを簡単に取得できるようになる
  validates :name, presence: true, length: {maximum: 6}
  def already_liked?(food)
    self.likes.exists?(food_id: food.id)
  end
end
