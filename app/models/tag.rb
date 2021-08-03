class Tag < ApplicationRecord
  has_many :tag_products, dependent: :destroy
  has_many :products, through: :tag_products
end
