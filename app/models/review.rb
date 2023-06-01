class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true

# A review’s rating must be a number between 0 and 5.
# A review’s rating must be an integer. For example, a review with a rating of 2.5 should be invalid! =end
end
