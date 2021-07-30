class TagsMovie < ApplicationRecord
  belongs_to :tag
  belongs_to :movie
end
