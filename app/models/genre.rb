class Genre < ApplicationRecord
  has_many :genre_products, dependent: :destroy
  has_many :products, through: :genre_products
end
