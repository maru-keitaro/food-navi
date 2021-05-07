class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :foods, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_foods, through: :likes, source: :food # liked_foodsによってuserがどの投稿をいいねしているのかを簡単に取得できるようになる
  has_many :active_relationships, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name:  "Relationship", foreign_key: "followed_id", dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  
  validates :name, presence: true, length: {maximum: 6}

  def liked_by?(food_id)
    likes.where(food_id: food_id).exists?
  end

  # ユーザーをフォローする
  def follow(other_user)
    following << other_user
  end

  # ユーザーをフォロー解除する
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # 現在のユーザーがフォローしていたらtrueを返す
  def following?(other_user)
    following.include?(other_user)
  end

end
