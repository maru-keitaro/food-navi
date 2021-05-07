class Like < ApplicationRecord

  belongs_to :user
  belongs_to :food
  validates_uniqueness_of :food_id, scope: :user_id
  # validates_uniqueness_ofによって、food_idとuser_idの組が1組しかないようにバリデーションをかけました。
end
