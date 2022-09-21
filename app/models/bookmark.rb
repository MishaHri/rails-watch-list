class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true, uniqueness: { scope: :list }
  validates :list, presence: true , uniqueness: { scope: :movie}
  belongs_to :movie
  belongs_to :list
  has_many :bookmarks
  # belongs_to :list
end

# Bookmark1: movie_id=0 list_id=1 OK
# Bookmark2: movie_id=0 list_id=2 OK
# Bookmark3: movie_id=1 list_id=1 OK
# Bookmark4: movie_id=0 list_id=1 KO


# Bookmark2: movie_id=1 list_id=1
# Bookmark2: movie_id=1 list_id=2
