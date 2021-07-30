class Tag < ApplicationRecord
  has_many :tags_movies, dependent: :destroy
  has_many :movies, through: :tags_movies
end
