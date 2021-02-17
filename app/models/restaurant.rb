class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :phone_number, presence: true

def average_rating
  return 0 if reviews.empty?
  (reviews.pluck(:rating).sum / reviews.count)
end

end
