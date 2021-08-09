class Episode < ApplicationRecord
  has_one_attached :image
  belongs_to :season

  validates :title, presence: true
end
