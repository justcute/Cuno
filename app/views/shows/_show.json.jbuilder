json.extract! show, :id, :title, :description, :trailer, :date, :duration, :sertification, :country, :created_at,
              :updated_at
json.url show_url(show, format: :json)
