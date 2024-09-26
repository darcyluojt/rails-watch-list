class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
  # validates_uniqueness_of :comment, scope: [ :movie_id, :list_id ]
end
