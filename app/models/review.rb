class Review < ApplicationRecord
  belongs_to :cocktail
  validates :content, :rating, presence: true
  validates :cocktail, presence: true
  validates :rating, inclusion: { in: 1..5,
    message: "%{value} is not a valid rating" }
  validates :rating, numericality: true
end
