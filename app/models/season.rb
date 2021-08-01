class Season < ApplicationRecord
  belongs_to :show, foreign_key: 'movie_id'
end
