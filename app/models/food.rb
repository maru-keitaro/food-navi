class Food < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  validates :genre_id, numericality: { other_than: 0 }

  with_options presence: true do
    validates :store
    validates :content
    validates :image
  end

  belongs_to :user
  has_one_attached :image
end
