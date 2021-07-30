class Movie < ApplicationRecord
  enum country: Countries::CODES, _suffix: true
  enum sertification: Specifications::CODES
end
