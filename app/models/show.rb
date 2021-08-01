class Show < Movie
  has_many :seasons, foreign_key: 'movie_id', dependent: :destroy
end
