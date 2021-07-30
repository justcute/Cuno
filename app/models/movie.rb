class Movie < ApplicationRecord
  enum country: Countries::CODES, _suffix: true
  enum sertification: Specifications::CODES

  # Belongs and has many genres
  has_many :genres_movies, dependent: :destroy
  has_many :genres, through: :genres_movies
  # Belongs and has many tags
  has_many :tags_movies, dependent: :destroy
  has_many :tags, through: :tags_movies
end
