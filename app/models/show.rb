class Show < Product
  has_one_attached :image
  has_many :seasons, foreign_key: 'product_id', dependent: :destroy
end
