class Season < ApplicationRecord
  has_one_attached :image
  belongs_to :show, foreign_key: 'movie_id'
end
