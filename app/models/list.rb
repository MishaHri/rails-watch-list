class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  # belongs_to :movie, dependent: :destroy
  validates :name, uniqueness: true, presence: true

end
