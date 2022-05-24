class Review < ApplicationRecord
  belongs_to :user
  belongs_to :friend
  validates :rating, :comment, presence: true
end
