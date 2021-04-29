class Food < ApplicationRecord

  validates :store_name, presence: true
  validates :content, presence: true
  validates :image, presence: true

  belongs_to :user
end
