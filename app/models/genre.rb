class Genre < ApplicationRecord
  has_many :genres_movies, dependent: :destroy
  has_many :movies, through: :genres_movies
end
