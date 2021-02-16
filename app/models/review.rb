class Review < ApplicationRecord
  belongs_to :restaurant

  RATING = [1, 2, 3, 4, 5].to_a
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :content, presence: true, length: { minimum: 25 }
end
