class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating,
            inclusion: { in: (0..5).to_a, message: "Ratings should be from 0 to 5" },
            numericality: { only_integer: true }
end
