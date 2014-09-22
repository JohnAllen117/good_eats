class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :rating, length: {within: 1..5,
    :message => "Rating must be between 1 and 5 stars."}
end
