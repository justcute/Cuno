json.extract! movie, :id, :title, :description, :trailer, :date, :duration, :sertification, :country, :created_at, :updated_at
json.url movie_url(movie, format: :json)
