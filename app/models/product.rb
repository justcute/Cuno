class Product < ApplicationRecord
  has_one_attached :image
  enum country: Countries::CODES, _suffix: true
  enum sertification: Specifications::CODES

  # Belongs and has many genres
  has_many :genre_products, dependent: :destroy
  has_many :genres, through: :genre_products
  # Belongs and has many tags
  has_many :tag_products, dependent: :destroy
  has_many :tags, through: :tag_products

  validates :title, :description, presence: true
end
