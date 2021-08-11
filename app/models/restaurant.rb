class Restaurant < ApplicationRecord
  TYPES = %w(chinese italian japanese french belgian)
  validates :category, inclusion: { in: TYPES, message: "%{value} is not an accepted category" }
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  # validates :category, exclusion: { in: %w(neptunian),
  #   message: "%{value} is reserved." }
end
