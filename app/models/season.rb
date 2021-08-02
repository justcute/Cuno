class Season < ApplicationRecord
  has_one_attached :image
  belongs_to :show, foreign_key: 'product_id'

  validates :title, :description, presence: true
end
