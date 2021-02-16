class Review < ApplicationRecord
  belongs_to :restaurants

  RATING = [1..5]
  validates :rating, presence: true, inclusion: { in: RATING }
  validates :content, presence: true, length: { minimum: 25 }
end
