class GenreProduct < ApplicationRecord
  belongs_to :product
  belongs_to :genre
end
