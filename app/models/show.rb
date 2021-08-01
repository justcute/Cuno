class Show < Movie
  has_one_attached :image
  has_many :seasons, foreign_key: 'movie_id', dependent: :destroy
end
